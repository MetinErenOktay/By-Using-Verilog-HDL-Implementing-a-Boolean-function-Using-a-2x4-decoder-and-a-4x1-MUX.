`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 19:16:42
// Design Name: 
// Module Name: circuit
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

`include "dec.v"
`include "mu.v"
module circuit(
    input a,
    input b,
    input c,
    input d,
    output F
);
    wire [3:0] Carries;    
    decoder_2x4 DE(.A({a,b}), .D(Carries));
    mux_4x1 MU(.i(Carries), .s({c,d}), .F(F));
endmodule

















