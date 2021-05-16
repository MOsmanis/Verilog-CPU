`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:52 11/08/2019 
// Design Name: 
// Module Name:    vga_top 
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
module vga_top
	#(
		 parameter COLUMNS = 16, ROWS = 4
	)
   (
		input wire RST_BTN,
		input wire CLK, // board clock: 50 MHz on Spartan-3E
		output wire VGA_HS_O,
		output wire VGA_VS_O,
		output wire VGA_R,
		output wire VGA_G,
		output wire VGA_B
   );

   // signal declaration
   reg [2:0] rgb_reg;
   wire [2:0] rgb_next;
	wire signed [9:0] x;  // current pixel x position: 10-bit value: 0-639
   wire signed [9:0] y;  // current pixel y position:  9-bit value: 0-479
   wire display_active;
   wire frame_blanking;

	//text buffer
	wire [COLUMNS*ROWS*8:0] text_buffer;
	text_buffer_storage text_buffer_storage_unit(
		.CLK(CLK),
		.text_buffer(text_buffer)
	);


   // generate a 25 MHz pixel strobe
	// also handle reset button
   reg [15:0] cnt;
   reg pix_stb;
   always @(posedge CLK) begin
		//Process reset button
		if (RST_BTN) begin
			cnt = 0;
			pix_stb = 0;
	   end
	
		//Generate pixel strobe: 25 MHz
		{pix_stb, cnt} = cnt + 16'h8000;  // divide by 2: (2^16)/2 = 0x8000
	end
	
	// body
   // instantiate vga sync circuit
	vga640x480 display (
       .i_clk(CLK),
       .i_pix_stb(pix_stb),
       .i_rst(RST_BTN),
       .o_hs(VGA_HS_O), 
       .o_vs(VGA_VS_O), 
       .o_sx(x), 
       .o_sy(y),
		 .o_frame_blanking(frame_blanking),
		 .o_active(display_active)
   );
	
	// font generation circuit
   char_gen char_gen_unit(
		.clk(CLK), 
		.video_on(display_active), 
		.pixel_x(x), .pixel_y(y), 
		.text_buffer(text_buffer), 
		.text_rgb(rgb_next)
	);
   // rgb buffer
   always @(posedge CLK) begin
      if (pix_stb) begin
         rgb_reg <= rgb_next;
		end
	end
	
	// output
	//don't draw when display_active is low
	assign {VGA_R,VGA_G,VGA_B} = display_active ? rgb_reg : 3'b000;

endmodule

