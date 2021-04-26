`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Latvijas Universit'ate
// 
////////////////////////////////////////////////////////////////////////////////

module TB_pc;

	// Inputs
	reg clk;
	reg reset;
	reg is_branch;
	reg [31:0] newPC;

	// Outputs
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.reset(reset), 
		.is_branch(is_branch), 
		.newPC(newPC), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		$display("Start ....");
		clk = 0;
		reset = 0;
		is_branch = 0;
		newPC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 clk=!clk;
  
	initial
	begin
		#100; /// initial shift
		$dumpfile ("PCtb.vcd"); $dumpvars(0,TB_pc);
		#5 reset=1;
		
		#10 reset=0;
		$display("Reset finished");
	end
	
	initial
	begin
		#100; /// initial shift
		#20; // Reset finished 
		//reset = 1; 
		#200;
		
		newPC = 32'b10101010101010101010101010101010;
		is_branch = 1;
		#20;
		is_branch = 0;
		#200;
		newPC = 32'b01010101010101010101010101010101;
		is_branch = 1;
		#20;
		is_branch = 0;
		#500;
		reset = 1;
		#50;
		reset = 0;
		#2000;
		$finish;
	end
		

	
      
endmodule

