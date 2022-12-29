`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 10:30:48 PM
// Design Name: 
// Module Name: simple_led
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


module simple_led(
    input A,
    input B,
    output LED1,
    output LED2,
    output LED3
    );
    
    assign LED1 = A;
    assign LED2 = B;
    assign LED3 = A & B;
    
endmodule
