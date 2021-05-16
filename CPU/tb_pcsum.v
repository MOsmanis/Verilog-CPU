`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:06 05/16/2021
// Design Name:   pcsum
// Module Name:   C:/Users/Andris/Desktop/RV32/Xilinx/calcpd/csr/tb_pcsum.v
// Project Name:  csr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pcsum
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_pcsum;

	// Inputs
	reg [31:0] op_a;
	reg [31:0] op_b;

	// Outputs
	wire [31:0] newpc;

	// Instantiate the Unit Under Test (UUT)
	pcsum uut (
		.op_a(op_a), 
		.op_b(op_b), 
		.newpc(newpc)
	);

	initial begin
		// Initialize Inputs
		op_a = 0;
		op_b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      op_a = 32'h55555555;
		op_b = 32'h55555555;
		#100;
      op_a = 32'h55555555;
		op_b = 32'hAAAAAAAA;
		#100;
      op_a = 32'hAAAAAAAA;
		op_b = 32'hAAAAAAAA;
		// Add stimulus here

	end
      
endmodule

