
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
		input [31:0] OP1,
		input [31:0] OP2,
		input [3:0] OPCODE,
		output reg [31:0] RESULT,
		output LT, // Flags
		output LTU, // Flags
		output EQ // Flags
    );
	 
	 
 // Substitute OP decode
	parameter [3:0] 	ADD = 0,	// ADD
						SUB = 1,	//	SUB
						SLL = 2, // 
						SLT = 3, //
						SLTU= 4, //
						XOR = 5,	// 4
						SRL = 6,	// 5
						SRA = 7, // 6
						OR = 8,	// 7
						AND = 9;	// 8
				 
	wire [4:0] shift = OP2[4:0];
	wire [30:0] zero = 31'b000_0000_0000_0000_0000_0000_0000_0000;
	assign EQ = (OP1 == OP2) ? 1:0;
	assign LTU = (OP1 < OP2) ? 1:0; // LESS THAN
	//assign LT = ($SIGNED(OP1)<$SIGNED(OP2)) ? 1:0; // LESS THAN (SIGNED)
	assign LT = OP1[31] ^ OP2[31] ? OP1 : LTU; // LESS THAN (SIGNED)
 

always @ *
	case(OPCODE)
		ADD:  RESULT = OP1 + OP2;		// 0 Add OP1 and OP2 result to RESULT // x[rd] = x[rs1] + x[rs2] // x[rd] = x[rs1] + sext(immediate)
		SUB:  RESULT = OP1 - OP2;		// 1 Sub OP2 from OP1 result to RESULT // x[rd] = x[rs1] - x[rs2] 

// Set Less Than immediate
		SLT:  RESULT = {zero,LT};				// RESULT = 1 if OP1 is less than OP2, otherwise RESULT = 0 (signed) // Set <
		SLTU: RESULT =	{zero,LTU};				// RESULT = 1 if OP1 is less than OP2, otherwise RESULT = 0 (unsigned) // Set < Unsigned
		
// Shifts		
		SLL:  RESULT = OP1 << shift;	// 2 Shift OP1 left of lower 5 bits of OP2 result into RESULT // x[rd] = x[rs1] << x[rs2]
		SRL:  RESULT = OP1 >> shift;	// Shift OP1 right of lower 5 bits of OP2 result into RESULT
		SRA:  RESULT =						// Shift OP1 right of lower 5 bits of OP2 result into RESULT, the sign persist
			$signed(OP1) >>> shift;
// LOGIC
		XOR:  RESULT = OP1 ^ OP2;		// bitwise XOR, OP1 and OP2 result to RESULT
		OR:   RESULT = OP1 | OP2;		// Set RESULT to the bitwise OR of OP1 and OP2
		AND:  RESULT = OP1 & OP2;		// Set RESULT to the bitwise AND of OP1 and OP2
		default:   RESULT = 0;
	endcase
endmodule



