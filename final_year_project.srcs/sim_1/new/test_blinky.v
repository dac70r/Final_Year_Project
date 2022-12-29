`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2022 01:16:06 AM
// Design Name: 
// Module Name: test_blinky
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


module test_blinky();
    reg clock; wire LED1;
    
    blinky dut (clock,LED1);
    
    initial begin 
        clock = 0;
    end 
    
    always begin
        #5 clock = ~clock;
    end 
    
    
endmodule
