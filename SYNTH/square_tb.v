`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:44:31 06/09/2021
// Design Name:   square_gen
// Module Name:   /home/ise/Synth_DIPm_Exam/square_tb.v
// Project Name:  Synth_DIPm_Exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: square_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module square_tb;

	// Inputs
	reg clk;
	reg [17:0] freq;
	reg add;

	// Outputs
	wire [11:0] sig_out;

	// Instantiate the Unit Under Test (UUT)
	square_gen uut (
		.clk(clk), 
		.freq(freq), 
		.add(add), 
		.sig_out(sig_out)
	);

	always 
		#10 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		freq = 18'd56818;
		add = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		add = 0;
		
		#10;
		add = 1;
		
		#10;		
		add = 0;
		
		#10;
		add = 1;
		
		#10
		freq = 18'd66000;
      add = 0;  
		
		end
      
endmodule

