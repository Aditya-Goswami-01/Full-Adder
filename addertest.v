// Here, I write the testbenches of Full Adder digital circuit.

`timescale 1s / 1s
module addertest;                                     // create a module without input and output pins
    reg A,B,C;                                        // here, declare the input and output signals
    wire sum, carry;
    adder uut (.A(A), .B(B), .C(C), .sum(sum), .carry(carry));              // now connect the input and output pins of full adder circuit of file name adder.v with their test-benches file
initial begin                                                         // now begin the different combinations of the inputs.
    A=0; B=0; C=0; #10;
    C=1; #10;
    B=1; C=0; #10;
    C=1; #10;
    A=1; B=0; C=0; #10;
    C=1; #10;
    B=1; C=0; #10;
    C=1; #10;
    $monitor ("%b %b %b | %b %b", A,B,C,sum,carry);                  // display the input and output.
    $finish;
    end
endmodule
