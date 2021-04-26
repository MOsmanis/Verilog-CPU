`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:37:38 04/26/2021
// Design Name:   mux8
// Module Name:   /home/ise/dip/TB_mux.v
// Project Name:  dip
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_mux;

	// Inputs
	reg [2:0] select;
	reg [31:0] in0;
	reg [31:0] in1;
	reg [31:0] in2;
	reg [31:0] in3;
	reg [31:0] in4;
	reg [31:0] in5;
	reg [31:0] in6;
	reg [31:0] in7;

	// Outputs
	wire [31:0] muxout;

	// Instantiate the Unit Under Test (UUT)
	mux8 uut (
		.select(select), 
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.in5(in5), 
		.in6(in6), 
		.in7(in7), 
		.muxout(muxout)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 0;
		in4 = 0;
		in5 = 0;
		in6 = 0;
		in7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in0 = 32'h0;
		in1 = 32'h11111111;
		in2 = 32'h33333333;
		in3 = 32'h77777777;
		in4 = 32'hffffffff;
		in5 = 32'h55555555;
		in6 = 32'haaaaaaaa;
		in7 = 32'h66666666;
		#50;
		select =1;
		#50;
		select =2;
		#50;
		select =3;
		#50;
		select =4;
		#50;
		select =5;
		#50;
		select =6;
		#50;
		select =7;
		#50;
		$finish;
		// Add stimulus here

	end
      
endmodule

