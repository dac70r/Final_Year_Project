`timescale 1ns / 1ps

module blinky(input clock, output LED1);
    reg [26:0] counter_reg = 0;
    reg clk_out_reg = 0;
      
    always @(posedge clock)begin
    if(counter_reg == 49_999_999) // 1Hz 50% Duty Cycle 
        begin
            counter_reg <= 0;
            clk_out_reg <= ~clk_out_reg;
        end 
        else
            counter_reg <= counter_reg + 1;
    end 
    
    assign LED1 = clk_out_reg;
    
endmodule


