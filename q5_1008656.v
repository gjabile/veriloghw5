`timescale 1ns / 1ps

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input rst,
    input ctrl,
    output reg [4:0] q
);

always @(*) begin
    if (rst) begin
        q <= 5'b00000; // Set q to 0 when rst is active high
    end else begin
        if (ctrl == 1'b0) begin
            q <= A + B; // Sum of A and B when ctrl is 0
        end else begin
            q <= A - C; // Difference of A and C when ctrl is 1
        end
    end
end

endmodule
