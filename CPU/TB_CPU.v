// Verilog test fixture created from schematic /home/ise/Documents/CPU/Verilog-CPU/schematic.sch - Tue Jun  8 23:02:16 2021

`timescale 1ns / 1ps

module schematic_schematic_sch_tb();

// Inputs
   reg CLK;
   reg MEM_INST_ENB;
   reg [31:0] MEM_LOAD;
   reg READ_ENB;
   reg RST;
   reg [31:0] MEM_INST;

// Output
   wire [31:0] ADDR;
   wire [15:0] MEM_ADDR;
   wire [31:0] MEM_STORE;
   wire MEM_WRITE_ENABLE;

// Bidirs

// Instantiate the UUT
   schematic UUT (
		.CLK(CLK), 
		.MEM_INST_ENB(MEM_INST_ENB), 
		.ADDR(ADDR), 
		.MEM_ADDR(MEM_ADDR), 
		.MEM_LOAD(MEM_LOAD), 
		.MEM_STORE(MEM_STORE),  
		.RST(RST), 
		.MEM_WRITE_ENABLE(MEM_WRITE_ENABLE), 
		.MEM_INST(MEM_INST)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		CLK = 0;
		MEM_INST_ENB = 0;
		MEM_LOAD = 0;
		READ_ENB = 0;
		RST = 0;
		MEM_INST = 0;
   `endif
endmodule
