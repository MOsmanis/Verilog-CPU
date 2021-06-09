`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:05:51 06/08/2021
// Design Name:   cu
// Module Name:   /home/ise/Documents/CPU/Verilog-CPU/TB_cu.v
// Project Name:  Verilog-CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_cu;

	// Inputs
	reg [31:0] MEM_INST;
	reg INST_ENB;
	reg READ_READY;
	reg CLK;
	reg RST;

	// Outputs
	wire [4:0] RS1_ADR;
	wire [4:0] RS2_ADR;
	wire [4:0] REG_ADR;
	wire PC_CLK;
	wire [3:0] ALU_OPT;
	wire [2:0] BR_OPT;
	wire [2:0] LSU_OPT;
	wire WRITE_ENB;
	wire MEM_WRITE_ENB;
	wire GLOBAL_RESET;
	wire [2:0] IMM_TYPE;
	wire [2:0] RS1_MUX_SELECT;
	wire [2:0] RS2_MUX_SELECT;
	wire [2:0] REG_MUX_SELECT;
	wire [2:0] LSU_MUX_SELECT;
	wire [2:0] PC_MUX_SELECT;

	// Instantiate the Unit Under Test (UUT)
	cu uut (
		.MEM_INST(MEM_INST), 
		.INST_ENB(INST_ENB), 
		.READ_READY(READ_READY), 
		.CLK(CLK), 
		.RST(RST), 
		.RS1_ADR(RS1_ADR), 
		.RS2_ADR(RS2_ADR), 
		.REG_ADR(REG_ADR), 
		.PC_CLK(PC_CLK), 
		.ALU_OPT(ALU_OPT), 
		.BR_OPT(BR_OPT), 
		.LSU_OPT(LSU_OPT), 
		.WRITE_ENB(WRITE_ENB),
		.GLOBAL_RESET(GLOBAL_RESET), 
		.IMM_TYPE(IMM_TYPE), 
		.RS1_MUX_SELECT(RS1_MUX_SELECT), 
		.RS2_MUX_SELECT(RS2_MUX_SELECT), 
		.REG_MUX_SELECT(REG_MUX_SELECT), 
		.LSU_MUX_SELECT(LSU_MUX_SELECT), 
		.PC_MUX_SELECT(PC_MUX_SELECT)
	);

	initial begin
		// Initialize Inputs
		MEM_INST = 0;
		INST_ENB = 0;
		READ_READY = 0;
		CLK = 0;
		
		RST = 1;
		// Wait 100 ns for global reset to finish
		#100;
		RST = 0;
		
		
		MEM_INST = 32'h06308093; //addi x1, x1, 0x63
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00110113; //addi x2, x2, 0x1
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h002081b3; // add x3, x1, x2
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;
		

		MEM_INST = 32'h40118233; // sub x4, x3, x1
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;


		MEM_INST = 32'h002112b3; // sll x5, x2, x2
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;


		MEM_INST = 32'h00112333; // slt x6, x2, x1
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h005243b3; // xor x7, x4, x5
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h0021d433; //srl x8, x3, x2
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h0081e4b3; //or x9, x3, x8
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h0090f533; //and x10, x1, x9
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h06342593; //slti x11, x8, 0x63
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h12354613; //xori x12, x10, 0x123
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h45666693; //ori x13, x12, 0x456
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h7896f713;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00311793;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h0037d813;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00302023;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00002883;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		READ_READY = 1;
		#200;

		MEM_INST = 32'h00001937;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		READ_READY = 1;
		#200;

		MEM_INST = 32'h00108663;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00150513;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00150513;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00198993;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'hfe7998e3;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00c00aef;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00150513;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h00150513;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;

		MEM_INST = 32'h070a0a13;
		INST_ENB = 1;
		#200;
		INST_ENB = 0;
		#200;
	end
      
endmodule

