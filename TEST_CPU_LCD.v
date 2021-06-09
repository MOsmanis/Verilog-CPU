// Verilog test fixture created from schematic /home/ise/Documents/CPU/Verilog-CPU/CPU_TB_LCD.sch - Wed Jun  9 18:22:06 2021

`timescale 1ns / 1ps

module CPU_TB_LCD_CPU_TB_LCD_sch_tb();

// Inputs
   reg CLK;

// Output
   wire LCD_E;
   wire LCD_RW;
   wire LCD_RS;
   wire [11:8] SF_D;

// Bidirs

// Instantiate the UUT
   CPU_TB_LCD UUT (
		.CLK(CLK), 
		.LCD_E(LCD_E), 
		.LCD_RW(LCD_RW), 
		.LCD_RS(LCD_RS), 
		.SF_D(SF_D)
   );
// Initialize Inputs
   initial begin
		CLK = 0;
		forever begin
		#10 CLK = ~CLK;
		end end
endmodule
