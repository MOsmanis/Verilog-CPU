`timescale 1ns/1ps
module imm32
(
	input  [31:7] in_imm,			// 25 bit = 32 - OPCODE
	input  [2:0]  imm_type,		// 
	output [31:0] immediate	// 32 bit
);
	parameter 		i_type = 3'b000, // 0
					b_type = 3'b001, // 1
					s_type = 3'b010, // 2
					u_type = 3'b011, // 3
					j_type = 3'b100; // 4
					// sh_type = 3'b101; // 5
					
	wire [31:0] i_imm;
	wire [31:0] s_imm;
	wire [31:0] b_imm;
	wire [31:0] u_imm;
	wire [31:0] j_imm;

	assign i_imm = { {21{in_imm[24]}}, in_imm[23:18], in_imm[17:14], in_imm[13] };
	assign s_imm = { {21{in_imm[24]}}, in_imm[23:18], in_imm[4:1],   in_imm[0]};
	assign b_imm = { {20{in_imm[24]}}, in_imm[0],     in_imm[23:18], in_imm[4:1], 	1'b0};
	assign u_imm = { in_imm[24], 		 in_imm[23:13], in_imm[12:5], {12{1'b0}}};
	assign j_imm = { {12{in_imm[24]}}, in_imm[12:5],  in_imm[13],    in_imm[23:18],	in_imm[17:14] ,1'b0};
	//assign sh_imm  = { 20'b0, in_imm[17:13] };
   
	assign immediate = ( imm_type == i_type)  ? i_imm :
							( imm_type == b_type ) ? b_imm :
							( imm_type == s_type ) ? s_imm :
							( imm_type == u_type ) ? u_imm :
							( imm_type == j_type ) ? j_imm : 
						// ( imm_type = sh_type ) ? sh_imm:
							({32{1'b1}});
					
					
endmodule				