`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 18:20:15
// Design Name: 
// Module Name: mu
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


module mux_4x1(
    input[3:0] i,
    input[1:0] s,
    output F
);
    wire s1neg, s0neg, T1, T2, T3, T4;
    not (s0neg, s[0]), (s1neg, s[1]), (i1neg, i[1]), (i2neg, i[2]);
    and (T1, i[0], s0neg, s1neg);
    and (T2, i[1], s[0], s1neg);
    and (T3, i[2], s0neg, s[1]);
    and (T4, i[3], s[0], s[1]);
    or(F, T1, T2, T3, T4);
endmodule
