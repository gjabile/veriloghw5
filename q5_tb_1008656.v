`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 09:17:14 PM
// Design Name: 
// Module Name: q5_tb_1008656
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

module CCTA_tb();

reg [3:0] A;
reg [3:0] B;
reg [3:0] C;
reg rst;
reg ctrl;
wire [4:0] q;

CCTA CCTA_u0(
    .A(A),
    .B(B),
    .C(C),
    .rst(rst),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    // Test case 1: rst is active high
    A = 4'b1010; B = 4'b0110; C = 4'b0001; rst = 1; ctrl = 0; #10;
    // Test case 2: ctrl is 0
    A = 4'b1100; B = 4'b0011; C = 4'b0101; rst = 0; ctrl = 1; #10;
    // Test case 3: ctrl is 1
    A = 4'b0110; B = 4'b1001; C = 4'b1010; rst = 0; ctrl = 0; #10;

    // Add more test cases if needed

    $finish;
end

endmodule

