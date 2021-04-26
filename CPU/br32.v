`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// RV32I provides two types of control transfer instructions: 
// 	unconditional jumps and 
// 	conditional branches. Control transfer instructions in RV32I do not have architecturally visible delay slots.
//////////////////////////////////////////////////////////////////////////////////
module br(
	input [2:0] BRUOP, // BEQ, BNE ....
	input aluEQ,
	input aluLT, 
	output doBranch	 
 );
	 
parameter [2:0] EQ = 0,
					 NE = 1, 
					 LT = 2,
					 GE = 3,
					 JAL = 4,
					 JALR = 5;

// Jump instructions: 	JAL: rd = pc + 4, pc = pc + signext(imm)
// 							JALR: rd = pc + 4, pc = rs1 + signext(imm)	

	assign is_jump = (BRUOP == JAL)? 1:
							(BRUOP == JALR)? 1: 0;
							
// Branch instructions:		pc = pc + (rs1 cmpop rs2) ? signext(imm) : 4
//
	assign doBranch = (BRUOP == EQ) ? aluEQ :
							(BRUOP == NE) ? !aluEQ :
							(BRUOP == LT) ? aluLT :
							(BRUOP == GE) ? !aluLT :
							(BRUOP == JAL) ? 1 :			// Can be routed in Control
							(BRUOP == JALR) ? 1 : 0;		// 

endmodule