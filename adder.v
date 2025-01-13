`timescale 1s / 1s
module adder(input A,B,C, output reg sum, carry);
    always @(A or B or C) begin
        sum = A^B^C;
        carry = (A&B)|(B&C)|(A&C);
        end
endmodule
