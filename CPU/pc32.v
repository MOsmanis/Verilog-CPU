//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module PC
(
	input	clk,
	input	reset,		// set PC = 0
	input is_branch, 	// selector: branch, pc+4
	input [31:0] newPC, // optional PC+SIG(ADDR) OR JALR
	output reg [31:0] PC
);

	wire [31:0] PC_wire;

	assign PC_wire = ( is_branch == 1 ) ?  newPC : (PC + 4);

	always@(posedge clk) // or negedge reset)
	begin
		if(!reset)
			PC <= PC_wire;
		else
			//PC  <= {32{1'b0}}; // 0
			PC  <= 0;
	end
endmodule
