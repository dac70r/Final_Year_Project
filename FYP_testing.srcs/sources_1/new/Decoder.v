`timescale 1ns / 1ps

module Decoder(
//    input mode,
    input [5:0]encoded_input,
    output [7:0]data_tx
    );
    
    reg [7:0]decoded_data;
    
    always @(encoded_input)begin
        case(encoded_input)
            6'b000001: decoded_data = 8'b01000001;      // input: A
            6'b000011: decoded_data = 8'b01000010;      // input: B
            6'b001001: decoded_data = 8'b01000011;      // input: C
            6'b011001: decoded_data = 8'b01000100;      // input: D
            6'b010001: decoded_data = 8'b01000101;      // input: E
            6'b001011: decoded_data = 8'b01000110;      // input: F
            6'b011011: decoded_data = 8'b01000111;      // input: G
            6'b010011: decoded_data = 8'b01001000;      // input: H
            6'b001010: decoded_data = 8'b01001001;      // input: I
            6'b011010: decoded_data = 8'b01001010;      // input: J
            6'b000101: decoded_data = 8'b01001011;      // input: K
            6'b000111: decoded_data = 8'b01001100;      // input: L
            6'b001101: decoded_data = 8'b01001101;      // input: M
            6'b011101: decoded_data = 8'b01001110;      // input: N
            6'b010101: decoded_data = 8'b01001111;      // input: O
            6'b001111: decoded_data = 8'b01010000;      // input: P
            6'b011111: decoded_data = 8'b01010001;      // input: Q
            6'b010111: decoded_data = 8'b01010010;      // input: R
            6'b001110: decoded_data = 8'b01010011;      // input: S
            6'b011110: decoded_data = 8'b01010100;      // input: T
            6'b100101: decoded_data = 8'b01010101;      // input: U
            6'b100111: decoded_data = 8'b01010110;      // input: V
            6'b111010: decoded_data = 8'b01010111;      // input: W
            6'b101101: decoded_data = 8'b01011000;      // input: X
            6'b111101: decoded_data = 8'b01011001;      // input: Y
            6'b110101: decoded_data = 8'b01011010;      // input: Z
            default  : decoded_data = 8'b00000000;
        endcase
    end
    
    assign data_tx  = decoded_data;
    
endmodule
