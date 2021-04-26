`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:24:00 04/26/2021
// Design Name:   lsu
// Module Name:   /home/ise/dip/TB_lsu.v
// Project Name:  dip
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lsu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_lsu;

	// Inputs
	reg [2:0] LSUOP;
	reg [31:0] inData_load;
	reg [31:0] inData_store;
	reg [31:0] inAddr;

	// Outputs
	wire [31:0] outData_load;
	wire [31:0] outData_store;
	wire [15:0] outAddr;

	// Instantiate the Unit Under Test (UUT)
	lsu uut (
		.LSUOP(LSUOP), 
		.inData_load(inData_load), 
		.inData_store(inData_store), 
		.inAddr(inAddr), 
		.outData_load(outData_load), 
		.outData_store(outData_store), 
		.outAddr(outAddr)
	);

	initial begin
		// Initialize Inputs
		LSUOP = 0;
		inData_load = 0;
		inData_store = 0;
		inAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		inData_load = 32'h7F7F7F7F;
      LSUOP = 0;
		#50;
		LSUOP = 1;
		#50;
		LSUOP = 2;
		#50;
		LSUOP = 3;
		#50;
		LSUOP = 4;
		#50;
		
		inData_load = 32'h80808080;
      LSUOP = 0;
		#50;
		LSUOP = 1;
		#50;
		LSUOP = 2;
		#50;
		LSUOP = 3;
		#50;
		LSUOP = 4;
		#50;
		
		inData_store = 32'hAAAAAAAA;
		LSUOP = 5;
		#50;
		LSUOP = 6;
		#50;
		LSUOP = 7;
		#50;		
		
		
		
	end
      
endmodule

