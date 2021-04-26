`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:11 04/24/2021
// Design Name:   alu
// Module Name:   /home/ise/dip/TB_alu32.v
// Project Name:  dip
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_alu32;

	// Inputs
	reg [31:0] OP1;
	reg [31:0] OP2;
	reg [3:0] OPCODE;

	// Outputs
	wire [31:0] RESULT;
	wire LT;
	wire LTU;
	wire EQ;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.OP1(OP1), 
		.OP2(OP2), 
		.OPCODE(OPCODE), 
		.RESULT(RESULT), 
		.LT(LT), 
		.LTU(LTU), 
		.EQ(EQ)
	);
	
	reg clk;
	
	always #10 clk=!clk;
  
	initial
	begin
		#100; /// initial shift
		$dumpfile ("TB_alu32.vcd"); $dumpvars(0,TB_alu32);
		clk = 0;
	end
	
	initial begin
		// Initialize Inputs
		OP1 = 0;
		OP2 = 0;
		OPCODE = 0;

		// Wait 100 ns for global reset to finish
		#100;
      OP1 = 32'h55555;
		OP2 = 32'hAAAAA;
//-------------
		OPCODE = 0; // ADD
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#50;
//--------		
		OPCODE = 1;  // SUB 
		OP2 = 32'hAAAAA;
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#100;
//-------	
      OP1 = 32'h55555;	
		OPCODE = 2;   
		#50;
		OP2 = 32'b00001;
		#50;
		OP2 = 32'b00011;
		#50;
		OP2 = 32'b00111;
		#50;
		OP2 = 32'b01111;
		#50;
		OP2 = 32'b11111;
		#100;
// ----------		
		OPCODE = 3; // SLT   
		OP2 = 32'hAAAAA;		
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#50;
		
// ---------------		
		OPCODE = 4; // SLTU   
		OP2 = 32'hAAAAA;		
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#50;
		
//--------
		OPCODE = 5; //XOR   
		OP2 = 32'hAAAAA;		
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#50;	
//----------		
      OP1 = 32'h55555;	
		OPCODE = 6;   
		#50;
		OP2 = 32'b00001;
		#50;
		OP2 = 32'b00011;
		#50;
		OP2 = 32'b00111;
		#50;
		OP2 = 32'b01111;
		#50;
		OP2 = 32'b11111;
		#100;
		
		
      OP1 = 32'h55555;	
		OPCODE = 7;   
		#50;
		OP2 = 32'b00001;
		#50;
		OP2 = 32'b00011;
		#50;
		OP2 = 32'b00111;
		#50;
		OP2 = 32'b01111;
		#50;
		OP2 = 32'b11111;
		#100;
//--------		
		OPCODE = 8; // OR   
		OP2 = 32'hAAAAA;		
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#50;				
//------		
		OPCODE = 9; // AND
		OP2 = 32'hAAAAA;		
		#50;
		OP2 = 32'h55555;
		#50;
		OP2 = 32'h33333;
		#50;		
		// Add stimulus here
		$finish;
	end
      
endmodule

