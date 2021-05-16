`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:32:26 05/13/2021
// Design Name:   font_test_top
// Module Name:   /home/pc/Dokumenti/ISE projekti/dip-2021/kp2/test1.v
// Project Name:  KP2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: font_test_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg RST_BTN;
	reg CLK;

	// Outputs
	wire VGA_HS_O;
	wire VGA_VS_O;
	wire VGA_R;
	wire VGA_G;
	wire VGA_B;

	// Instantiate the Unit Under Test (UUT)
	font_test_top uut (
		.RST_BTN(RST_BTN),
		.CLK(CLK), 
		.VGA_HS_O(VGA_HS_O),
		.VGA_VS_O(VGA_VS_O), 
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST_BTN = 1;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		RST_BTN = 0;
	end
	always
		#5 CLK = !CLK;
      
endmodule

