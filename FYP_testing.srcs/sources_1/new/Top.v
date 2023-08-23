`timescale 1ns / 1ps

module Top(
    input clk, //100100MHz FPGA Basys 3 Board Clock
    input reset, //reset button
    input tx_enable, //input signal wire
    
    input [5:0]data_in, 
    output [7:0]data_out, //data that we receive at the receiving end, using 8 right most leds on the basys 3 board
    output [7:0]data_tx,
    
    input rx,
    output tx,
    
    output PWM1, output PWM2, output PWM3,
    output PWM4, output PWM5, output PWM6
    );
    
    //wire [7:0]RxData_Wire;
    wire [5:0]RxData_Wire;
    //wire [7:0]TxData_Wire;
    reg mode=0;
    
    //Receiver_RxD receiver(clk_fpga, reset, RxD, RxData,RxData_Wire);    
    Decoder Tx_Mapping(data_in, data_tx);
    UART_controller UART(clk, reset, tx_enable, data_tx, data_out, rx, tx);
    Motor_control Rx_Mapping(data_out, RxData_Wire);
    PWM_Generator PWM_Control(clk, mode, data_in, RxData_Wire, PWM1, PWM2, PWM3, PWM4, PWM5, PWM6);
    
    always@(data_in)begin 
        if(data_in !=0)
            mode=1;
        else
            mode=0;
        
    end
    // Remaining task to do
    // Pass the RxData to Mapping module and give out a control value 
    //  Control value input to the pwm motor control to determine which case to be toggled,
    // A-Z ! ? , . 
    
    
endmodule
