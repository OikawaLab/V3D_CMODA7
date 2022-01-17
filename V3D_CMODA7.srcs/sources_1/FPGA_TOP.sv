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
    //-- Buttons
    input  wire [1:0] IBTN,
    //-- LEDs
    output wire [1:0] OLED,
    output wire OLED_B,
    output wire OLED_G,
    output wire OLED_R,
    //-- reference clock.
    input  wire ICLKREF
    );

    always_ff @(posedge ICLKREF) begin
    end
endmodule //- FPGA_TOP
