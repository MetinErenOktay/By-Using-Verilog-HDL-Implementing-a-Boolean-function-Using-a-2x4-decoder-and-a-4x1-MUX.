`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 18:20:36
// Design Name: 
// Module Name: mu_tb
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


module mux_4x1_tb;
    reg [3:0] i;
    reg [1:0] s;
    wire F;
    mux_4x1 uut(.i(i), .s(s), .F(F));
    initial begin
        s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b0; i[1] = 1'b0; i[0] = 1'b1;       
        #5 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b1; i[2] = 1'b1; i[1] = 1'b1; i[0] = 1'b0;
        #5 s[1] = 1'b0; s[0] = 1'b1; i[3] = 1'b0; i[2] = 1'b0; i[1] = 1'b1; i[0] = 1'b0;
        #5 s[1] = 1'b0; s[0] = 1'b1; i[3] = 1'b1; i[2] = 1'b1; i[1] = 1'b0; i[0] = 1'b1;
        #5 s[1] = 1'b1; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b1; i[1] = 1'b0; i[0] = 1'b0;
        #5 s[1] = 1'b1; s[0] = 1'b0; i[3] = 1'b1; i[2] = 1'b0; i[1] = 1'b1; i[0] = 1'b1;
        #5 s[1] = 1'b1; s[0] = 1'b1; i[3] = 1'b1; i[2] = 1'b0; i[1] = 1'b0; i[0] = 1'b0;
        #5 s[1] = 1'b1; s[0] = 1'b1; i[3] = 1'b0; i[2] = 1'b1; i[1] = 1'b1; i[0] = 1'b1;    
        #5 $finish;
    end
endmodule