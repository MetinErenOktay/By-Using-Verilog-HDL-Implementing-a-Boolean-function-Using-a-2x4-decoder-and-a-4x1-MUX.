`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 18:02:02
// Design Name: 
// Module Name: dec
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


module decoder_2x4(
    input[1:0] A,
    output[3:0] D
    );
    assign D[3] = (A[0]) && (A[1]);
    assign D[2] = (!(A[0])) && (A[1]);
    assign D[1] = (A[0]) && (!(A[1]));
    assign D[0] = (!(A[0])) && (!(A[1]));
endmodule
