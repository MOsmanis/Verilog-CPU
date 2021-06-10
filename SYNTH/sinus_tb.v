`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:17 06/09/2021
// Design Name:   sinus_gen
// Module Name:   /home/ise/Synth_DIPm_Exam/sinus_tb.v
// Project Name:  Synth_DIPm_Exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sinus_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sinus_tb;

	// Inputs
	reg clk;
	reg [17:0] freq;
	reg add;

	// Outputs
	wire [11:0] sig_out;

	// Instantiate the Unit Under Test (UUT)
	sinus_gen uut (
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
		freq = 0;
		add = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

