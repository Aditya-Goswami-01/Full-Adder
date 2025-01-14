`timescale 1s / 1s        // define the time unit and time precision
module adder(input A,B,C, output reg sum, carry);       // create a module with name adder and also define the input and output pins.
    always @(A or B or C) begin                // Behaviroal structure is begin.
        sum = A^B^C;                              // here, I assign the sum output in terms of input 
        carry = (A&B)|(B&C)|(A&C);                // here, I assign the carry output in terms of input
        end                                       // Ending of behaviroal structure. 
endmodule                                        // every module is end with end module.
