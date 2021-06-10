`timescale 1ns / 1ps

module debouncer(
		input clk, //this is a 50MHz clock provided on FPGA pin PIN_Y2
		input PB,  //this is the input to be debounced
		output reg PB_state = 0  //this is the debounced switch
	);
	/*This module debounces the pushbutton PB.
	 *It can be added to your project files and called as is:
	 *DO NOT EDIT THIS MODULE
	 */
	 
	reg[15:0] counter = 16'd0;
	reg msclk = 0;
	always@(posedge clk)begin
	if(counter < 16'd50000)
		counter <= counter + 16'd1;
	else
		counter <= 16'd0;
		msclk <= ~msclk;
	end

	// Synchronize the switch input to the clock
	reg PB_sync_0;
	always @(posedge msclk)
		PB_sync_0 <= PB;
		
	reg PB_sync_1;
	always @(posedge msclk) 
		PB_sync_1 <= PB_sync_0;

	// Debounce the switch
	reg [15:0] PB_cnt;
	always @(posedge msclk)
		if(PB_state==PB_sync_1)
			 PB_cnt <= 0;
		else
		begin
			 PB_cnt <= PB_cnt + 1'b1; 
			 if(PB_cnt == 16'hffff) PB_state <= ~PB_state; 
	end
endmodule
