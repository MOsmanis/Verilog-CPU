`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:57 05/16/2021 
// Design Name: 
// Module Name:    pcsum 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pcsum(
	input [31:0] op_a,
	input [31:0] op_b,
	output [31:0] newpc
    );

assign newpc = op_a + op_b;


endmodule
