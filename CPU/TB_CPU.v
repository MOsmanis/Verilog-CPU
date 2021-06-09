// Verilog test fixture created from schematic /home/ise/Documents/CPU/Verilog-CPU/schematic.sch - Tue Jun  8 23:02:16 2021

`timescale 1ns / 1ps

module schematic_schematic_sch_tb(
	input REAL_CLK,
	output reg [0:255] lcd_buffer
);

// Inputs
   reg CLK;
   reg MEM_INST_ENB;
   reg [31:0] MEM_LOAD;
   reg READ_ENABLE;
   reg RST;
   reg [31:0] MEM_INST;

// Output
   wire [31:0] ADDR;
   wire [15:0] MEM_ADDR;
   wire [31:0] MEM_STORE;
   wire MEM_WRITE_ENABLE;

	reg [7:0] char;
	
	
	reg [31:0] MEMORY [0:31];
	integer index;

// Instantiate the UUT
   schematic UUT (
		.CLK(CLK), 
		.MEM_INST_ENB(MEM_INST_ENB), 
		.ADDR(ADDR), 
		.READ_ENABLE(READ_ENABLE),
		.MEM_ADDR(MEM_ADDR), 
		.MEM_LOAD(MEM_LOAD), 
		.MEM_STORE(MEM_STORE),  
		.RST(RST), 
		.MEM_WRITE_ENABLE(MEM_WRITE_ENABLE), 
		.MEM_INST(MEM_INST)
   );
// Initialize Inputs
	 initial begin
		CLK = 0; // for reg file
		MEM_INST_ENB = 0; // start next instruction
		MEM_LOAD = 0; 
		READ_ENABLE = 0; //for load
		MEM_INST = 0; //32 bits risc-v instruction
		
		//INIT TEST MEMORY
		for(index = 0; index < 32; index = index + 1) 
			MEMORY[index] <= 32'b0;
		MEMORY[12'b00000010000] <= "   1";
		MEMORY[0] <= {12'b000000011111,5'b11111, 3'b100,5'b11111,7'b0000011};//LBU for 8 bits?
		MEMORY[4] <= {12'b000000000001,5'b11111, 3'b000,5'b11111,7'b0010011};//ADDI
		MEMORY[8] <= {7'b0000000,5'b11111, 3'b000,5'b11111,7'b0100011};//SB?
		
		
		//GLOBAL RESET
		RST = 1;
		#1000 //wait for global reset
		RST = 0;
		//GET ADDRESS FROM PC
		//MEM_INST and MEM_INST_ENB
	end
	always @(ADDR) begin
		MEM_INST = MEMORY[ADDR];
		MEM_INST_ENB = 1;
		MEM_INST_ENB = 0;
	end
	always @(MEM_ADDR) begin
		MEM_LOAD = MEMORY[MEM_ADDR];
		READ_ENABLE = 1;
		//wait till read?
		#1000
		READ_ENABLE = 0;
	end
	always @(posedge MEM_WRITE_ENABLE) begin
	
	end
	always @(posedge REAL_CLK or negedge REAL_CLK) begin
			if(REAL_CLK > 0) begin
				lcd_buffer = {" WORD Buffer!   -2nd line ch", MEMORY[12'b000000011111]};
				CLK <= 1;
			end else begin
				CLK <= 0;
			end
	end
endmodule
