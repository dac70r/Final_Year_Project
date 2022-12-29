`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 10:54:27 PM
// Design Name: 
// Module Name: my_control_module_simulation
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


module my_control_module_simulation(

    );
    
    // Simulation Inputs 
    reg A;
    reg B;
    
    // Simulation Outputs 
    wire LED1;
    wire LED2;
    wire LED3;
    
    
    // Instantiation of the module to be simulated 
    simple_led dut (A,B,LED1,LED2,LED3);
    
    // Stimuli
    initial begin
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    end 
    
endmodule
