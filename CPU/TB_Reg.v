`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Latvijas Universitāte
// Engineer: Andris Eihmanis
//
// Create Date:   12:37:04 04/01/2021
// Design Name:   Reg2R1W
// Module Name:   /home/ise/dip/TB_Reg.v
// Project Name:  DIP RISC-V
// 
////////////////////////////////////////////////////////////////////////////////

module TB_Reg;

	// Inputs
	reg [31:0] wrData;
	reg [4:0] wrReg;
	reg [4:0] readSelect1;
	reg [4:0] readSelect2;
	reg clk;
	reg writeEnable;
	reg rst;

	// Outputs
	wire [31:0] readData1;
	wire [31:0] readData2;

	// Instantiate the Unit Under Test (UUT)
	Reg2R1W uut (
		.wrData(wrData), 
		.wrReg(wrReg), 
		.readSelect1(readSelect1), 
		.readSelect2(readSelect2), 
		.readData1(readData1), 
		.readData2(readData2), 
		.clk(clk), 
		.writeEnable(writeEnable), 
		.rst(rst)
	);

	integer index;

initial begin
	// Initialize Inputs
	wrData = 0;
	wrReg = 0;
	readSelect1 = 0;
	readSelect2 = 0;
	clk = 0;
	writeEnable = 0;
	rst = 0;

	// Wait 100 ns for global reset to finish
	#100;
        
		// Add stimulus here
end
	
always #10 clk=!clk;
  
initial
begin
	#100; /// initial shift
	$dumpfile ("R2W1v2.vcd"); $dumpvars(0,TB_Reg);
	#5 rst=1;
	writeEnable=0;
	#10 rst=0;
end
	
initial
begin
	#100; /// initial shift
	#14
	
// Test - Write Register File;
	for(index=0;index<32;index=index+1)
	begin
		 wrReg = index;
		 wrData = 16*index;
		 $display("wrReg: %d wrData:%d",wrReg, wrData);
		 writeEnable = 1;
		 #20;
		 writeEnable = 0;
	end
	
	#50
      
      
// Test - Read Reg file and output Even and Odd reg RF[]=> R1 & R2		
    for (index = 0; index < 32; index = index + 2)
      begin
			readSelect1 = index;
			readSelect2 = index + 1;
			#20;
			$display ("REG[%2d]=%d, REG[%2d]=%d",readSelect1,readData1,readSelect2,readData2);
		end
     	#20;
     
// Test - Read R0;
     	readSelect1 = 0;
     	readSelect2 = 0;
		#20;
		$display ("-= REG[%2d]=%d, REG[%2d]=%d",readSelect1,readData1,readSelect2,readData2);
		#20;

// Test - Write and Read sync; WR->R1 && R2
      for(index=0;index<32;index=index+1)
		begin
          wrReg = index;
          readSelect1 = index;
          readSelect2 = index;
          wrData = 16*index;
          writeEnable = 1;
          #20;
          $display("wrReg: %d wrData:%d readSelect1:%d readData1: %d",wrReg, wrData, readSelect1,readData1);
          #20;
          writeEnable = 0;
		end

		#50;
		#2000 $finish;
    end
endmodule

