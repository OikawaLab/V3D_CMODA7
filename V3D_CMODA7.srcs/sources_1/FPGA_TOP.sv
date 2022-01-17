//////////////////////////////////////////////////////////////////////////////////
// Company: Kochi University 
// Engineer: Oikawa Minoru
// 
// Create Date: 2022/01/17 21:13:29
// Design Name: 
// Module Name: FPGA_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module FPGA_TOP (
    //-- Speakers
    output wire [10:0] SP0,
    output wire [10:0] SP1,
    output wire [10:0] SP2,
    //-- Buttons
    input  wire [1:0]  IBTN,
    //-- LEDs
    output wire [1:0]  OLED,
    output wire        OLED_B,
    output wire        OLED_G,
    output wire        OLED_R,
    //-- Monitors
    output wire        OLOCKED,
    output wire        OSPM,
    //-- reference clock.
    input  wire        ICLKREF     // 12MHz
    );

    wire clk100, clk50, clk10, s_locked;
    wire rst100;
    wire s_sp_master;

    assign OLED[0] = IBTN[0];

    //--
    SP_MASTER sp_master (
        .OSP  (s_sp_master),
        .IRST (rst100),
        .ICLK (clk100)
    );
    assign OSPM = s_sp_master;

    //-- Reset generator
    wire s_rstreq = IBTN[0] | ~s_locked;
    RSTGEN rstgen (
        .IREQ    (s_rstreq),
        .ORST    (rst100),
        .ICLK    (clk100)
    );

    //-- Clock generator
    CLKGEN clkgen (
        .ICLKREF (ICLKREF),
        .OCLK100 (clk100),
        .OCLK50  (clk50),
        .OCLK10  (clk10),
        .OLOCKED (s_locked)
    );
endmodule //- FPGA_TOP

module RSTGEN (
    output wire ORST,
    input wire IREQ,
    input wire ICLK
    );
    reg [31:0] r_sft;
    reg r_rst;

    always_ff @(posedge ICLK) begin
        r_sft <= {r_sft[30:0], IREQ};
    end
    always_ff @(posedge ICLK) begin
        r_rst <= (r_sft[31:16] == 16'hFFFF);
    end
    assign ORST = r_rst;
endmodule //- RSTGEN
