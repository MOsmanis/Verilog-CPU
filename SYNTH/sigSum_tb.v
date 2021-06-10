`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:32 06/09/2021
// Design Name:   signal_sum
// Module Name:   /home/ise/Synth_DIPm_Exam/sigSum_tb.v
// Project Name:  Synth_DIPm_Exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signal_sum
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sigSum_tb;

	// Inputs
	reg clk;
	reg [1:0] SW0;
	reg [1:0] SW1;
	reg [11:0] sig_sine;
	reg [11:0] sig_square;

	// Outputs
	wire [23:0] sig;

	// Instantiate the Unit Under Test (UUT)
	signal_sum uut (
		.clk(clk), 
		.SW0(SW0), 
		.SW1(SW1), 
		.sig_sine(sig_sine), 
		.sig_square(sig_square), 
		.sig(sig)
	);

	always 
		#10 clk = ~clk;	
	
	initial begin
		// Initialize Inputs
		clk = 0;
		SW0 = 0;
		SW1 = 0;
		sig_sine = 0;
		sig_square = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		sig_sine =   12'b001100000000;
		sig_square = 12'b001101010011;  
		  
		#100
		
		SW1 = 1;
		
		#100
		
		SW1 = 0;
		
		#100
		
		SW0 = 1;
		
		#100
		
		SW0 = 0;
	end
      
endmodule

