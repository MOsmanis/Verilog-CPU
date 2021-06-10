`timescale 1ns / 1ps

module sinus_gen(
		input clk,
		input [17:0] freq,	
		input add,		
		output reg [11:0] sig_out = 12'd0 // Sinus wave signal
	);
	
	reg [6:0] steps = 7'd28;
	reg [6:0] count1 = 7'd0;	
	reg [5:0] freqStep = 6'd21;
	
	always@(posedge add)
		if(freqStep == 6'd48)
			freqStep = 6'd0;
		else
			freqStep = freqStep + 6'd1;
	 
	always@(freqStep)
		case(freqStep)
			6'd0: steps <= 7'd93;
			6'd1: steps <= 7'd88;
			6'd2: steps <= 7'd83;
			6'd3: steps <= 7'd78;
			6'd4: steps <= 7'd74;
			6'd5: steps <= 7'd70;
			6'd6: steps <= 7'd66;
			6'd7: steps <= 7'd62;
			6'd8: steps <= 7'd59;
			6'd9: steps <= 7'd55;
			6'd10: steps <= 7'd52;
			6'd11: steps <= 7'd49;
			6'd12: steps <= 7'd47;
			6'd13: steps <= 7'd44;
			6'd14: steps <= 7'd42;
			6'd15: steps <= 7'd39;
			6'd16: steps <= 7'd37;
			6'd17: steps <= 7'd35;
			6'd18: steps <= 7'd33;
			6'd19: steps <= 7'd31;
			6'd20: steps <= 7'd29;
			6'd21: steps <= 7'd28;
			6'd22: steps <= 7'd26;
			6'd23: steps <= 7'd25;
			6'd24: steps <= 7'd23;
			6'd25: steps <= 7'd22;
			6'd26: steps <= 7'd21;
			6'd27: steps <= 7'd20;
			6'd28: steps <= 7'd19;
			6'd29: steps <= 7'd17;
			6'd30: steps <= 7'd16;
			6'd31: steps <= 7'd16;
			6'd32: steps <= 7'd15;
			6'd33: steps <= 7'd14;
			6'd34: steps <= 7'd13;
			6'd35: steps <= 7'd12;
			6'd36: steps <= 7'd12;
			6'd37: steps <= 7'd11;
			6'd38: steps <= 7'd10;
			6'd39: steps <= 7'd10;
			6'd40: steps <= 7'd9;
			6'd41: steps <= 7'd9;
			6'd42: steps <= 7'd8;
			6'd43: steps <= 7'd8;
			6'd44: steps <= 7'd7;
			6'd45: steps <= 7'd7;
			6'd46: steps <= 7'd7;
			6'd47: steps <= 7'd6;
			6'd48: steps <= 7'd6;
		endcase
	
	
	always@(posedge clk)begin
		count1 <= count1 + 7'd1;
			if(count1 == steps)begin
				count1 <= 7'd0;
				if(sig_out < 12'd4095)
					sig_out <= sig_out + 12'd1;
				else
					sig_out <= 12'd0;
			end
	end
endmodule
