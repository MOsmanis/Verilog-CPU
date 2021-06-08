`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  
//
//////////////////////////////////////////////////////////////////////////////////
module mux8
#(	 
    parameter [31:0]buswidth  = 32,
    parameter [31:0]selwidth  = 3)
(
    input [(selwidth-1):0] in_select,
    input [(buswidth-1):0] in0,
    input [(buswidth-1):0] in1,
    input [(buswidth-1):0] in2,
    input [(buswidth-1):0] in3,
    input [(buswidth-1):0] in4,
    input [(buswidth-1):0] in5,
    input [(buswidth-1):0] in6,
    input [(buswidth-1):0] in7,
	 output [(buswidth-1):0] muxout
    );


assign muxout = (in_select == 0) ? in0:
					(in_select == 1) ? in1:
					(in_select == 2) ? in2:
					(in_select == 3) ? in3:
					(in_select == 4) ? in4:
					(in_select == 5) ? in5:
					(in_select == 6) ? in6:
					(in_select == 7) ? in7: 32'bx;

endmodule
