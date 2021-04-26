`timescale 1ns/1ps
module lsu
#(parameter DATAMEM_ADDR_WIDTH = 16) // 1MB)
(
        input [2:0] LSUOP,
        input [31:0] inData_load,
        input [31:0] inData_store,
        input [31:0] inAddr,
		
		output reg [31:0] outData_load,
        output reg [31:0] outData_store,
		output [DATAMEM_ADDR_WIDTH-1:0] outAddr // Fit efective address space
    );
	
	parameter LB = 0,
			LH = 1,
			LW = 2,
			LBU = 3,
			LHU = 4,
			
			SB = 5,
			SH = 6,
			SW = 7; 

	assign outAddr = inAddr[DATAMEM_ADDR_WIDTH-1:0];
// Shape Load and Store data
	always @* begin
        outData_load = {32{1'b0}};
        outData_store = {32{1'b0}};
		case(LSUOP)
	// rd <- Mem[rs1 + signext(imm)], Lx sign-extends
		// 8-bit (LB rd,rs1,imm) SX (addr@rs1 + 12-bit IMM) -> rd
			LB:	outData_load = {{24 {inData_load[7]}}, inData_load[7:0] };  
		// 16-bit (LH rd,rs1,imm) SX (addr@rs1 + 12-bit IMM) -> rd
			LH: outData_load = {{16 {inData_load[15]}}, inData_load[15:0] };  
		// 32-bit (LW rd,rs1,imm) SX (addr@rs1 + 12-bit IMM) -> rd		
			LW:  outData_load = inData_load;  
			
	// rd <- Mem[rs1 + signext(imm)], LxU zero-extends
		// 8-bit (LBU rd,rs1,imm) ZX (addr@rs1 + 12-bit IMM) -> rd
			LBU:	outData_load = {{24 {1'b0}}, inData_load[7:0] };  
		// 16-bit (LHU rd,rs1,imm) ZX (addr@rs1 + 12-bit IMM) -> rd
			LHU: outData_load = {{16 {1'b0}}, inData_load[15:0] };  
			
	// Mem[rs1 + signext(imm)] <- rs2		
		// 8-bit (SB rs1,rs2,imm) rs2[7:0] -> addr@rs1 + 12-bit	IMM	
			SB: outData_store = { {24 {1'b0}}, inData_store[7:0] };  
		// 16-bit (SB rs1,rs2,imm) rs2[15:0] -> addr@rs1 + 12-bit	IMM            
			SH: outData_store = { {16 {1'b0}}, inData_store[15:0] };
		// 32-bit (SB rs1,rs2,imm) rs2 -> addr@rs1 + 12-bit	IMM		
         SW: outData_store = inData_store;
			
			default: begin
				 outData_load = {32{1'b0}};
				 outData_store = {32{1'b0}};
			end
		endcase
    end
endmodule