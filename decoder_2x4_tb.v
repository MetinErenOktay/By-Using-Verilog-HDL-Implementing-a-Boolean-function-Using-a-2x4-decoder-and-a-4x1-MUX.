`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 18:02:34
// Design Name: 
// Module Name: dec_tb
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


module decoder_2x4_tb;
    reg [1:0] A;
    wire [3:0] D;  
    decoder_2x4 uut(.A(A), .D(D));
    initial begin
        A[1] = 1'b0; A[0] = 1'b0;        
        #5 A[1] = 1'b0; A[0] = 1'b1;
        #5 A[1] = 1'b1; A[0] = 1'b0;
        #5 A[1] = 1'b1; A[0] = 1'b1;
        #5 $finish;
    end
endmodule
