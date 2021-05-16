`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:28 05/16/2021 
// Design Name: 
// Module Name:    char_gen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module char_gen
   #(
		 parameter COLUMNS = 16, ROWS = 4
	)
	(
    input wire clk,
    input wire video_on,
    input wire [9:0] pixel_x, 
	 input wire [9:0] pixel_y,
	 input wire [COLUMNS*ROWS*8:0] text_buffer,
    output reg [2:0] text_rgb
   );

   // signal declaration
   wire [10:0] rom_addr;
   wire [6:0] char_addr;
   wire [3:0] row_addr;
   wire [2:0] bit_addr;
   wire [7:0] font_word;
   wire font_bit;
	wire [2:0] font_rgb;

   // body
   // instantiate font ROM
   font_rom font_unit
      (.clk(clk), .addr(rom_addr), .data(font_word));
		
	//char_addr generation
	wire [6:0] tile_col;
	wire [7:0] tile_row;
	assign tile_col = pixel_x[9:3];
	assign tile_row = pixel_y[8:4];
	assign char_addr[0] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS] : 0;
	assign char_addr[1] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS + 1] : 0;
	assign char_addr[2] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS + 2] : 0;
	assign char_addr[3] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS + 3] : 0;
	assign char_addr[4] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS + 4] : 0;
	assign char_addr[5] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS + 5] : 0;
	assign char_addr[6] = (tile_col < COLUMNS && tile_row < ROWS) ? text_buffer[tile_col*8 + tile_row*8*COLUMNS + 6] : 0;
	
   // font ROM interface
   assign row_addr = pixel_y[3:0];
   assign rom_addr = {char_addr, row_addr};
   assign bit_addr = pixel_x[2:0];
   assign font_bit = font_word[~bit_addr];

	// object signals
   // green over black
   assign font_rgb = (font_bit) ? 3'b010 : 3'b000;
   // rgb multiplexing circuit
   always @*
      if (~video_on)
         text_rgb = 3'b000; // blank
      else
         text_rgb = font_rgb;

endmodule
