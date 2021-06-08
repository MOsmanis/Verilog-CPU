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
	reg READ_ENB;
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
		.READ_ENB(READ_ENB), 
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
		.MEM_WRITE_ENB(MEM_WRITE_ENB), 
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
		READ_ENB = 0;
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

