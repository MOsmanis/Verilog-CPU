`timescale 1ns / 1ps

module top(	
		input clk,
		
		//Switches
		input SW0,
		input SW1,
		input SW2,
		input SW3,		
		
		//SPI
		input spi_miso,
		output spi_mosi,
		output dac_cs,
		output spi_sck,
		
		input BTN_WEST,
		
		output spi_amp_cs,
		output spi_adc_conv,
		output spi_rom_cs,
		output spi_amp_shdn,
		output dac_clr,
		output strataflash_oe,
		output strataflash_ce,
		output strataflash_we,
		output platformflash_oe,
		
		output LED7
	);
	
	// tie off the Amp and ADC bits for now
	assign spi_amp_cs = 1'b1;
	assign spi_adc_conv = 1'b0;
	// Tie of other SPI enables to isolate DAC
	assign spi_rom_cs = 1'b1;
	assign spi_amp_shdn = 1'b1;
	//Switch to switch DAC on/off
	assign dac_clr = SW3;
	// Tie off the flash enables to allow SPI to work
	assign strataflash_oe = 1'b1;
	assign strataflash_ce = 1'b1;
	assign strataflash_we = 1'b1;
  	assign platformflash_oe = 1'b0;
	
	assign LED7 = SW3;
	
	wire [11:0] sqr_out;	
	wire [11:0] sin_out;
	wire [17:0] freq = 18'd56818; //should be input	
	wire btnWest;
	
	//Debouncer for buttons
	debouncer btnWestDB(
		.clk(clk),
		.PB(BTN_WEST),
		.PB_state(btnWest)
	);
	
	//Square generation
	square_gen square(
		.clk(clk),
		.freq(freq),
		.add(btnWest),
		.sig_out(sqr_out)
	);
	
	//Sinus generation
	sinus_gen sinus(
		.clk(clk),
		.freq(freq),
		.add(btnWest),
		.sig_out(sin_out)
	);
	
	//Signal sum
	wire [23:0] data_in;		
	signal_sum sigSum (
	  .SW0 (SW0),
	  .SW1 (SW1),
	  .sig_sine (sin_out),
	  .sig_square (sqr_out),
	  .clk (clk),
	  .sig (data_in)
	);

	//DAC
	spi_driver spi(
		.clk(clk), 
		.reset(~SW3),
		.spi_mosi(spi_miso),
		.data_in(data_in),
		.spi_sck(spi_sck),
		.spi_sdo(spi_mosi),
		.spi_dac_cs(dac_cs)
	);
endmodule
