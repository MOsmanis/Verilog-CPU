`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:32:52 05/16/2021
// Design Name:   pc4
// Module Name:   C:/Users/Andris/Desktop/RV32/Xilinx/calcpd/csr/tb_pc4.v
// Project Name:  csr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_pc4;

	// Inputs
	reg [31:0] pc;

	// Outputs
	wire [31:0] pc4;

	// Instantiate the Unit Under Test (UUT)
	pc4 uut (
		.pc(pc), 
		.pc4(pc4)
	);

	initial begin
		// Initialize Inputs
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		pc = 32'hfffffff4;
		#100;
		pc = 32'hfffffff8;
		#100;
		pc = 32'hfffffffc;
		#100;
		pc = 32'hfffffffe;
        
		// Add stimulus here

	end
      
endmodule

