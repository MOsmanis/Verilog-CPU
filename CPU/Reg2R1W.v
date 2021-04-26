`timescale 1ns / 1ps


////////////////////////////////////////////////////////////////////////////////
// Company: Latvijas Universitāte
// Engineer: Andris Eihmanis
//
// Create Date:   12:32:04 04/01/2021
// Design Name:   Reg2R1W
// Module Name:   /home/ise/dip/Reg2R1W.v
// Project Name:  DIP RISC-V
// 
////////////////////////////////////////////////////////////////////////////////


module Reg2R1W(
    input [31:0] wrData,
    input [4:0] wrReg,
    input [4:0] readSelect1,
    input [4:0] readSelect2,
    output reg [31:0] readData1,
    output reg [31:0] readData2,
	 //output [31:0] readData1,
    //output [31:0] readData2,
    input clk,
    input writeEnable,
	 input rst
    );
	 
reg [31:0] RF [0:31];
integer index;

// RV32I Specification R0 = 0
//assign  readData1 = ( readSelect1 == 0 ) ? 0 : RF[readSelect1];
//assign  readData2 = ( readSelect2 == 0 ) ? 0 : RF[readSelect2];


//// Sync Reg read -- optional
// IF wrReg == readSelect1 => readData1 = wrData 
// IF wrReg == readSelect2 => readData2 = wrData
// 
always @ (posedge clk) begin
	if (rst == 1) begin
		for(index = 0; index < 32; index = index + 1) 
			RF[index] <= 32'b0;
	end 
	else if(writeEnable) begin
 //     $display("Write to %d:%d ", wrReg,wrData);
		RF[wrReg] <= wrData;
	end
end
	 
always @ (posedge clk) begin
	if(wrReg == readSelect1)
        	readData1 <= (writeEnable ? wrData : RF[readSelect1]);
      	if(wrReg == readSelect2)
        	readData2 <= (writeEnable ? wrData : RF[readSelect2]);
		if (!writeEnable) begin
			readData1 <= ( readSelect1 == 0 ) ? 0 : RF[readSelect1];
			// $display("PRG:Read to %d:%d ", readSelect1,readData1);
			readData2 <= ( readSelect2 == 0 ) ? 0 : RF[readSelect2];
      			//$display("PRG:Read to %d:%d ", readSelect1,readData1);
      		end
end
endmodule  
