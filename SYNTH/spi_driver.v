`timescale 1ns / 1ps

module spi_driver(
		input clk,
		input reset,
		input spi_mosi,
		input [23:0] data_in,
		
		output reg spi_sck,
		output reg spi_sdo,
		output reg spi_dac_cs
	);
	
	// SPI clock is system clock/2
	reg half_clk;
	always @(posedge clk)
		if(reset)
			half_clk <= 1'b0;
		else
			half_clk <= ~half_clk;
	
	// synchronous counter sequences the spi bits
	reg [5:0] state, next_state;
	always @(posedge clk)
		if(reset)
			state <= 6'd0;
		else
			if(half_clk)
				state <= next_state;
	
	reg ck_ena, sdo, dac_cs;
	
	// compute next state and spi outputs
	always @(state)begin
		// defaults
		ck_ena = 1'b1;
		dac_cs = 1'b0;
		sdo = 1'bx;
		next_state = state + 1;
		
		case(state)
			6'd0:begin	// 1st cycle: CS high
				ck_ena = 1'b0;
				dac_cs = 1'b1;
			end
			
			6'd24:	// 25th cycle: reset
				next_state = 6'd0;
		endcase
	end
	
	// Data register
	reg [23:0] ser_reg;
	always @(posedge clk)
		if(ck_ena)begin	// shift
			if(half_clk)
				ser_reg <= {ser_reg[22:0],spi_mosi};
		end else	// load
			ser_reg <= data_in;
	
	always @(posedge clk)
	begin
		spi_sck <= half_clk & ck_ena;
		spi_sdo <= ser_reg[23];
		spi_dac_cs <= dac_cs;
	end		
endmodule