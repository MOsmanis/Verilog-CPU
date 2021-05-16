`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:52 11/08/2019 
// Design Name: 
// Module Name:    vga640x480 
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
module vga640x480(
    input wire i_clk,           // base clock
    input wire i_pix_stb,       // pixel clock strobe
    input wire i_rst,           // reset: restarts frame
    output wire o_hs,           // horizontal sync
    output wire o_vs,           // vertical sync
    output wire o_frame_blanking,       // high during vertical blanking signal
	 output wire o_active,       // high during active pixel drawing
    output reg signed [10:0] o_sx,      // current pixel x position
    output reg signed [10:0] o_sy       // current pixel y position
    );

	 //base constants for vga 640 x 480 resolution
	 localparam H_RES = 640; // horizontal resolution (pixels)
	 localparam V_RES = 480; // vertical resolution (lines)
	 localparam H_FP = 16; // horizontal front porch
	 localparam H_SYNC = 96; // horizontal sync
	 localparam H_BP = 48; // horizontal back porch
	 localparam V_FP = 10; // vertical front porch
	 localparam V_SYNC = 2; // vertical sync
	 localparam V_BP = 33; // vertical back porch
	 
	 //horizontal: sync, active and pixels
	 localparam signed H_STA = 0 - H_FP - H_SYNC - H_BP; // horizontal start
	 localparam signed HS_STA = H_STA + H_FP; //sync start
	 localparam signed HS_END = HS_STA + H_SYNC; //sync end
	 localparam signed HA_STA = 0; //active start
	 localparam signed HA_END = H_RES - 1; //active end
	 
	 //vertical: sync, active and pixels
	 localparam signed V_STA = 0 - V_FP - V_SYNC - V_BP; // vertical start
	 localparam signed VS_STA = V_STA + V_FP; //sync start
	 localparam signed VS_END = VS_STA + V_SYNC; //sync end
	 localparam signed VA_STA = 0; //active start
	 localparam signed VA_END = V_RES - 1; //active end

    // generate sync signals (active low for 640x480)
    assign o_hs = ~(o_sx > HS_STA && o_sx <= HS_END);
    assign o_vs = ~(o_sy > VS_STA && o_sy <= VS_END);

	 // active: high during active period
	 assign o_active = (o_sx >= 0 && o_sy >= 0);

	 // o_frame_blanking: high during vertical blanking signal
	 assign o_frame_blanking = o_sy < 0;

    always @ (posedge i_clk)
    begin
        if (i_rst)  // reset to start of frame
        begin
            o_sx <= H_STA;
            o_sy <= V_STA;
        end
        if (i_pix_stb)  // once per pixel
        begin
				if (o_sx == HA_END) begin //end of line
					o_sx <= H_STA;
					if (o_sy == VA_END) begin
						o_sy <= V_STA;
					end else begin
						o_sy <= o_sy + 16'sh1;
					end
				
				end else begin
					o_sx <= o_sx + 16'sh1;
				end
        end
    end
endmodule