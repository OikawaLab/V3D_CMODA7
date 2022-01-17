//                              -*- Mode: Verilog -*-
// Filename        : SP_MASTER.sv
// Description     : 
// Author          : Parasha
// Created On      : Mon Jan 17 22:00:14 2022
// Last Modified By: Parasha
// Last Modified On: Mon Jan 17 22:00:14 2022
// Update Count    : 0
// Status          : Unknown, Use with caution!

module SP_MASTER (
    output wire OSP,
    input wire  IRST,
    input wire  ICLK  // 100MHz
    );

    reg [6:0] r_tick; //-- count 100ns
    reg [7:0] r_tack;
    reg       r_sp;

    localparam [6:0] TICK_MAX = 7'd99;
    localparam [7:0] TACK_MAX = 8'd249;

    always_ff @(posedge ICLK) begin
        if (IRST)  r_tick <= 7'd0;
        else if (r_tick < TICK_MAX) r_tick <= r_tick + 7'd1;
        else  r_tick <= 7'd0;
    end

    wire s_tick = (r_tick == 7'd99);

    always_ff @(posedge ICLK) begin
        if (IRST)  r_tack <= 8'd0;
        else if (s_tick) begin
            if (r_tack < TACK_MAX) r_tack <= r_tack + 8'd1;
            else  r_tack <= 8'd0;
        end
    end

    always_ff @(posedge ICLK) begin
        if (IRST)                  r_sp <= 1'b0;
        else if (r_tack == 8'd124) r_sp <= 1'b1;
        else if (r_tack == TACK_MAX) r_sp <= 1'b0;
    end

    assign OSP = r_sp;
endmodule

