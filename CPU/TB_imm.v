`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Latvijas Universitāte
// Engineer: Andris Eihmanis
//
// Create Date:   12:32:04 04/01/2021
// Design Name:   Reg2R1W
// Module Name:   /home/ise/dip/Reg2R1W.v
// Project Name:  DIP RISC-V
// 
////////////////////////////////////////////////////////////////////////////////


module TB_imm;

	// Inputs
	reg [24:0] IN;
	reg [2:0] imm_type;

	// Outputs
	wire [31:0] immediate;

	// Instantiate the Unit Under Test (UUT)
	imm32 uut (
		.IN(IN), 
		.imm_type(imm_type), 
		.immediate(immediate)
	);

	initial begin
		// Initialize Inputs
		$dumpfile ("TB_imm.vcd"); $dumpvars(0,TB_imm);
		
		IN = 0;
		imm_type = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Instruction type reference
		// i_type = 3'b000, // 0
		// b_type = 3'b001, // 1
		// s_type = 3'b010, // 2
		// u_type = 3'b011, // 3
		// j_type = 3'b100; // 4
		// sh_type = 3'b101; // 5
		
		$display("Start");
// -----------------------------------------------------------------		
		// I-type Instruction:
		// addi s3, s3, -4 // 11111111110010011000100110010011
		imm_type = 0;
		IN = 25'b1111111111001001100010011;
		#50;
		
		// SB-type Instruction / B-type
		// beq s0, t0, 32 / 00000010010101000000000001100011
		// 16					5		8		0		99
		//	000000010000	00101	01000	000	1100011
		imm_type = 1;
		IN = 25'b0000001001010100000000000;
		$display("Btype: %B, %B, %B, %B,", {21{IN[24]}}, IN[23:18], IN[4:1], IN[0]);
		#50;

		// S-type Instruction:
		//       00000000011110011010000000100011 / sw t2, 0(s3)
		imm_type = 2;
		IN = 25'b0000000001111001101000000;
		#50;

		// U-type Instruction:
		// 		00000000000000000000010100010111 / auipc a0, 0
		imm_type = 3;
		IN = 25'b0000000000000000000001010;
		#50;
		
		// UJ-type Instruction / J-type
		//       00000010000000000000000001101111 / jal x0, +32
		imm_type = 4;
		IN = 25'b0000001000000000000000000;
		#50;	
		
		#50;
		$finish;
	end    
endmodule

