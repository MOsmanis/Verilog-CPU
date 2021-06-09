module char_mem(
    input [4:0] addr,
	 input [0:255] lcd_buffer,
	 input CLK,
    output reg [7:0] lcd_bus
    );
	 
	parameter LINES = 2;
	parameter CHARS_PER_LINE = 16;
	parameter BITS_PER_CHAR = 8;
	parameter STR_SIZE = LINES * CHARS_PER_LINE * BITS_PER_CHAR;
	
	parameter [0:STR_SIZE-1] str = " WORD Buffer!   -2nd line chars-";

	always @(posedge CLK) begin
		lcd_bus = lcd_buffer[{addr[4:0], 3'b000}+:8];
	end
endmodule
