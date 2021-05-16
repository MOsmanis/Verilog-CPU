`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:03 05/16/2021 
// Design Name: 
// Module Name:    pc4 
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
module pc4(
	input [31:0] pc,
	output [31:0] pc4
    );

assign pc4 = pc + 4;


endmodule
