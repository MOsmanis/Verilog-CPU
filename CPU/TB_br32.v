`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// 
////////////////////////////////////////////////////////////////////////////////

module TB_br32;

	// Inputs
	reg [2:0] BRUOP;
	reg aluEQ;
	reg aluLT;

	// Outputs
	wire doBranch;

	// Instantiate the Unit Under Test (UUT)
	br uut (
		.BRUOP(BRUOP), 
		.aluEQ(aluEQ), 
		.aluLT(aluLT), 
		.doBranch(doBranch)
	);

	initial begin
		// Initialize Inputs
		BRUOP = 0;
		aluEQ = 0;
		aluLT = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//EQ = 0,
		BRUOP = 0;
		aluEQ = 0;
		#50;
		aluEQ = 1;
		#50;

		//NE = 1, 
		BRUOP = 1;
		aluEQ = 0;
		#50;
		aluEQ = 1;
		#50;
		aluEQ = 0;
		//LT = 2,
		BRUOP = 2;
		aluLT = 0;
		#50;
		aluLT = 1;
		#50;

		//GE = 3,
		BRUOP = 3;
		aluLT = 0;
		#50;
		aluLT = 1;
		#50;
		aluLT = 0;
		//JAL = 4,
		BRUOP = 4;

		#100;

		//JALR = 5;
		BRUOP = 5;

		#100;

		// Add stimulus here

	end
      
endmodule

