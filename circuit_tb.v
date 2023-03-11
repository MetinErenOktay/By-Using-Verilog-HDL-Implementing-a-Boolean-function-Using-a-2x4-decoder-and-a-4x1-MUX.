`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 19:17:04
// Design Name: 
// Module Name: circuit_tb
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


module circuit_tb;
    reg a; 
    reg b; 
    reg c; 
    reg d;    
    wire F;
    circuit uut(.a(a), .b(b), .c(c), .d(d), .F(F));
    initial begin
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;       
        #5 a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
        #5 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
        #5 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
        #5 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
        #5 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
        #5 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
        #5 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; 
        #5 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
        #5 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
        #5 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
        #5 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
        #5 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
        #5 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
        #5 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
        #5 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;         
        #5 $finish;
    end
    
endmodule
