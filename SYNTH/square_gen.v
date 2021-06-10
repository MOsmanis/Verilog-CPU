`timescale 1ns / 1ps

module square_gen(
		input clk,
		input [17:0] freq,
		input add,
		output reg [11:0] sig_out = 12'h000 //Square wave signal
	);
	
	reg [5:0] freqStep = 6'd21;
	reg [17:0] signal = 18'd56818; //440Hz hardcoded
	
	always@(posedge add)
		if(freqStep == 6'd48) //each step increments by 1 IF add = 1
			freqStep = 6'd0;
		else
			freqStep = freqStep + 6'd1;

	always@(freqStep)
		case(freqStep)
			6'd0: signal <= 18'd190839;
			6'd1: signal <= 18'd179856;
			6'd2: signal <= 18'd170068;
			6'd3: signal <= 18'd160256;
			6'd4: signal <= 18'd151515;
			6'd5: signal <= 18'd142857;
			6'd6: signal <= 18'd135135;
			6'd7: signal <= 18'd127551;
			6'd8: signal <= 18'd120192;
			6'd9: signal <= 18'd113636;
			6'd10: signal <= 18'd107296;
			6'd11: signal <= 18'd101214;
			6'd12: signal <= 18'd95419;
			6'd13: signal <= 18'd90252;
			6'd14: signal <= 18'd85034;
			6'd15: signal <= 18'd80385;
			6'd16: signal <= 18'd75757;
			6'd17: signal <= 18'd71633;
			6'd18: signal <= 18'd67567;
			6'd19: signal <= 18'd63775;
			6'd20: signal <= 18'd60240;
			6'd21: signal <= 18'd56818;
			6'd22: signal <= 18'd53648;
			6'd23: signal <= 18'd50607;
			6'd24: signal <= 18'd47801;
			6'd25: signal <= 18'd45126;
			6'd26: signal <= 18'd42589;
			6'd27: signal <= 18'd40192;
			6'd28: signal <= 18'd37936;
			6'd29: signal <= 18'd35816;
			6'd30: signal <= 18'd34059;
			6'd31: signal <= 18'd31887;
			6'd32: signal <= 18'd30084;
			6'd33: signal <= 18'd28409;
			6'd34: signal <= 18'd26824;
			6'd35: signal <= 18'd25303;
			6'd36: signal <= 18'd23877;
			6'd37: signal <= 18'd22542;
			6'd38: signal <= 18'd21276;
			6'd39: signal <= 18'd20080;
			6'd40: signal <= 18'd18953;
			6'd41: signal <= 18'd17895;
			6'd42: signal <= 18'd16891;
			6'd43: signal <= 18'd15943;
			6'd44: signal <= 18'd15051;
			6'd45: signal <= 18'd14204;
			6'd46: signal <= 18'd13404;
			6'd47: signal <= 18'd12651;
			6'd48: signal <= 18'd11944;
		endcase
	
	reg [31:0] cycleCount = 0;
	always@(posedge clk)
	  if(cycleCount >= signal)begin //Flip the signal at every half-period
			sig_out <= ~sig_out;
			cycleCount <= 0;
	  end else
			cycleCount <= cycleCount + 1;
endmodule
