`timescale 1s / 1s
module addertest;
    reg A,B,C;
    wire sum, carry;
adder uut (.A(A), .B(B), .C(C), .sum(sum), .carry(carry));
initial begin 
    A=0; B=0; C=0; #10;
    C=1; #10;
    B=1; C=0; #10;
    C=1; #10;
    A=1; B=0; C=0; #10;
    C=1; #10;
    B=1; C=0; #10;
    C=1; #10;
    $monitor ("%b %b %b | %b %b", A,B,C,sum,carry);
    $finish;
    end
endmodule
