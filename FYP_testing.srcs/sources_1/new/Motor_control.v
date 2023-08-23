`timescale 1ns / 1ps

module Motor_control(
//    input mode,
    input [7:0]RxData,
    output [5:0]encoded_output
    
//    ,output mapping_test,
//    output test_led
    );
    
    // A-Z : decimal 65 -90
    reg [5:0]encoded_data;
    
    always @(RxData)begin
        case(RxData)
            8'b01000001: encoded_data = 6'b000001;      // input: A
            8'b01000010: encoded_data = 6'b000011;      // input: B
            8'b01000011: encoded_data = 6'b001001;      // input: C
            8'b01000100: encoded_data = 6'b011001;      // input: D
            8'b01000101: encoded_data = 6'b010001;      // input: E
            8'b01000110: encoded_data = 6'b001011;      // input: F
            8'b01000111: encoded_data = 6'b011011;      // input: G
            8'b01001000: encoded_data = 6'b010011;      // input: H
            8'b01001001: encoded_data = 6'b001010;      // input: I
            8'b01001010: encoded_data = 6'b011010;      // input: J
            8'b01001011: encoded_data = 6'b000101;      // input: K
            8'b01001100: encoded_data = 6'b000111;      // input: L
            8'b01001101: encoded_data = 6'b001101;      // input: M
            8'b01001110: encoded_data = 6'b011101;      // input: N
            8'b01001111: encoded_data = 6'b010101;      // input: O
            8'b01010000: encoded_data = 6'b001111;      // input: P
            8'b01010001: encoded_data = 6'b011111;      // input: Q
            8'b01010010: encoded_data = 6'b010111;      // input: R
            8'b01010011: encoded_data = 6'b001110;      // input: S
            8'b01010100: encoded_data = 6'b011110;      // input: T
            8'b01010101: encoded_data = 6'b100101;      // input: U
            8'b01010110: encoded_data = 6'b100111;      // input: V
            8'b01010111: encoded_data = 6'b111010;      // input: W
            8'b01011000: encoded_data = 6'b101101;      // input: X
            8'b01011001: encoded_data = 6'b111101;      // input: Y
            8'b01011010: encoded_data = 6'b110101;      // input: Z
            default    : encoded_data = 6'b000000;
        endcase
    end
    
    assign encoded_output = encoded_data;
    
endmodule


// ****Remainder for myself about this module****
//  PWM1-6 are just 1/0 toggled at each pos clock 
// so pwm storage are the reg really controlling the motion 
//  mayabe hard code and design the code pin by pin 
// 1 4          
// 2 5              set the motors in this way. Lets say "A" is the input, we need to set pwm_storage_1
// 3 6                                                                 "S" then set pwm_storage_2,3,4

// encoded_data : 6'bxxxxxx (pin6 -> pin1)
