`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:28 05/16/2021 
// Design Name: 
// Module Name:    text_buffer_storage 
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
module text_buffer_storage
	#(
		 parameter COLUMNS = 16, ROWS = 4
	)
	(
		input wire CLK, // board clock: 50 MHz on Spartan-3E
		output reg [COLUMNS*ROWS*8:0] text_buffer
	);
	
	reg loaded = 1'b0;
	
	always @(posedge CLK) begin
		if (!loaded) begin
			text_buffer[1 * 8 - 1 + 16 * 8 * 0:0 * 8 + 16 * 8 * 0]  = "H";
			text_buffer[2 * 8 - 1 + 16 * 8 * 0:1 * 8 + 16 * 8 * 0]  = "e";
			text_buffer[3 * 8 - 1 + 16 * 8 * 0:2 * 8 + 16 * 8 * 0]  = "l";
			text_buffer[4 * 8 - 1 + 16 * 8 * 0:3 * 8 + 16 * 8 * 0]  = "l";
			text_buffer[5 * 8 - 1 + 16 * 8 * 0:4 * 8 + 16 * 8 * 0]  = "o";
			text_buffer[6 * 8 - 1 + 16 * 8 * 0:5 * 8 + 16 * 8 * 0]  = " ";
			text_buffer[7 * 8 - 1 + 16 * 8 * 0:6 * 8 + 16 * 8 * 0]  = "W";
			text_buffer[8 * 8 - 1 + 16 * 8 * 0:7 * 8 + 16 * 8 * 0]  = "o";
			text_buffer[9 * 8 - 1 + 16 * 8 * 0:8 * 8 + 16 * 8 * 0]  = "r";
			text_buffer[10 * 8 - 1 + 16 * 8 * 0:9 * 8 + 16 * 8 * 0]  = "l";
			text_buffer[11 * 8 - 1 + 16 * 8 * 0:10 * 8 + 16 * 8 * 0] = "d";
			text_buffer[12 * 8 - 1 + 16 * 8 * 0:11 * 8 + 16 * 8 * 0] = "?";
			text_buffer[13 * 8 - 1 + 16 * 8 * 0:12 * 8 + 16 * 8 * 0] = "?";
			text_buffer[14 * 8 - 1 + 16 * 8 * 0:13 * 8 + 16 * 8 * 0] = "?";
			text_buffer[15 * 8 - 1 + 16 * 8 * 0:14 * 8 + 16 * 8 * 0] = "?";
			text_buffer[16 * 8 - 1 + 16 * 8 * 0:15 * 8 + 16 * 8 * 0] = "?";
			
			text_buffer[1 * 8 - 1 + 16 * 8 * 1:0 * 8 + 16 * 8 * 1]  = "H";
			text_buffer[2 * 8 - 1 + 16 * 8 * 1:1 * 8 + 16 * 8 * 1]  = "e";
			text_buffer[3 * 8 - 1 + 16 * 8 * 1:2 * 8 + 16 * 8 * 1]  = "l";
			text_buffer[4 * 8 - 1 + 16 * 8 * 1:3 * 8 + 16 * 8 * 1]  = "l";
			text_buffer[5 * 8 - 1 + 16 * 8 * 1:4 * 8 + 16 * 8 * 1]  = "o";
			text_buffer[6 * 8 - 1 + 16 * 8 * 1:5 * 8 + 16 * 8 * 1]  = " ";
			text_buffer[7 * 8 - 1 + 16 * 8 * 1:6 * 8 + 16 * 8 * 1]  = "W";
			text_buffer[8 * 8 - 1 + 16 * 8 * 1:7 * 8 + 16 * 8 * 1]  = "o";
			text_buffer[9 * 8 - 1 + 16 * 8 * 1:8 * 8 + 16 * 8 * 1]  = "r";
			text_buffer[10 * 8 - 1 + 16 * 8 * 1:9 * 8 + 16 * 8 * 1]  = "l";
			text_buffer[11 * 8 - 1 + 16 * 8 * 1:10 * 8 + 16 * 8 * 1] = "d";
			text_buffer[12 * 8 - 1 + 16 * 8 * 1:11 * 8 + 16 * 8 * 1] = "!";
			text_buffer[13 * 8 - 1 + 16 * 8 * 1:12 * 8 + 16 * 8 * 1] = "!";
			text_buffer[14 * 8 - 1 + 16 * 8 * 1:13 * 8 + 16 * 8 * 1] = "!";
			text_buffer[15 * 8 - 1 + 16 * 8 * 1:14 * 8 + 16 * 8 * 1] = "!";
			text_buffer[16 * 8 - 1 + 16 * 8 * 1:15 * 8 + 16 * 8 * 1] = "!";
			
			text_buffer[1 * 8 - 1 + 16 * 8 * 2:0 * 8 + 16 * 8 * 2]  = "3";
			
			text_buffer[1 * 8 - 1 + 16 * 8 * 3:0 * 8 + 16 * 8 * 3]  = "4";

			
			loaded = 1'b1;
		end
	end


endmodule
