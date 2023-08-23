`timescale 1ns / 1ps

module PWM_Generator(
    input clock, 
    input mode,
    input [5:0]data_in,
    input [5:0]encoded_data,          // input from mapping, replacing input A-F,         encoded_data[0] = pin1 => encoded_data[5] = pin6
    
    //input A, input B, input C, input D, input E, input F, 
    
    output PWM1, output PWM2, output PWM3,
    output PWM4, output PWM5, output PWM6
//    ,output pwm_test
    //output LED1, output LED2, output LED3, output LED4, output LED5, output LED6
    );
    
    reg [26:0] counter_reg = 0;
    reg clk_out_reg = 1;
    reg [18:0] pwm_storage_a = 0;     // PWM Storage for Servo A 
    reg [18:0] pwm_storage_b = 0;   // PWM Storage for Servo B
    reg [18:0] pwm_storage_c = 0;   // PWM Storage for Servo C 
    reg [18:0] pwm_storage_d = 0;   // PWM Storage for Servo D 
    reg [18:0] pwm_storage_e = 0;   // PWM Storage for Servo E 
    reg [18:0] pwm_storage_f = 0;   // PWM Storage for Servo F 
    reg pwm_led = 0;
          
        always @(posedge clock)
            begin
        //if(counter_reg == 49_999_999) // 1Hz 50% Duty Cycle 
        if(counter_reg == 1_999_999) // 50Hz 50% Duty Cycle 
            begin
                counter_reg <= 0;
                //clk_out_reg <= ~clk_out_reg;
            end 
       
            else
                counter_reg <= counter_reg + 1;
            end
          
     always @ (encoded_data, data_in) begin
        case(mode)
            0: begin
                if(encoded_data[0]==1'b1)               //L Motor
                    pwm_storage_a = 149_999;  
                 else
                    pwm_storage_a = 189_999;
              
                if(encoded_data[1]==1'b1)               //R Motor
                    pwm_storage_b = 149_999; 
                 else
                    pwm_storage_b = 99_999;
              
                if(encoded_data[2]==1'b1)               //L Motor
                    pwm_storage_c = 149_999; 
                else
                    pwm_storage_c = 199_999;
              
                if(encoded_data[3]==1'b1)               //R Motor
                    pwm_storage_d = 149_999;
                 else
                    pwm_storage_d = 99_999;
              
                if(encoded_data[4]==1'b1)               //L Motor
                    pwm_storage_e = 149_999;            
                else
                    pwm_storage_e = 189_999;
                 
                if(encoded_data[5]==1'b1)               //R Motor
                    pwm_storage_f = 149_999; 
                else
                    pwm_storage_f = 99_999;
           end
           
           1: begin
                if(data_in[0]==1'b1)               //L Motor
                    pwm_storage_a = 149_999;  
                 else
                    pwm_storage_a = 189_999;
              
                if(data_in[1]==1'b1)               //R Motor
                    pwm_storage_b = 149_999; 
                 else
                    pwm_storage_b = 99_999;
              
                if(data_in[2]==1'b1)               //L Motor
                    pwm_storage_c = 149_999; 
                else
                    pwm_storage_c = 199_999;
              
                if(data_in[3]==1'b1)               //R Motor
                    pwm_storage_d = 149_999;
                 else
                    pwm_storage_d = 99_999;
              
                if(data_in[4]==1'b1)               //L Motor
                    pwm_storage_e = 149_999;            
                else
                    pwm_storage_e = 189_999;
                 
                if(data_in[5]==1'b1)               //R Motor
                    pwm_storage_f = 149_999; 
                else
                    pwm_storage_f = 99_999;
           end 
        endcase     
    end 
        
//        assign LED1 = A;
//        assign LED2 = B;
//        assign LED3 = C;
//        assign LED4 = D;
//        assign LED5 = E;
//        assign LED6 = F;
        
        // Need to be done: change the values of pwm_storage, so that PWM1 is for pin 1, 2 for pin2, 3 for pin3
        
        assign PWM1 = (counter_reg<pwm_storage_a) ? 1:0; // A 
        assign PWM2 = (counter_reg<pwm_storage_b) ? 1:0; // B
        assign PWM3 = (counter_reg<pwm_storage_c) ? 1:0; // C
        assign PWM4 = (counter_reg<pwm_storage_d) ? 1:0; // D
        assign PWM5 = (counter_reg<pwm_storage_e) ? 1:0; // E
        assign PWM6 = (counter_reg<pwm_storage_f) ? 1:0; // F
          
endmodule

//always @ (A)
//         begin
//            if(A==1)
//                begin
//                    pwm_storage = 149_999;
//                end
                
////            else if(C==1)
////                begin
////                    pwm_storage = 249_999;
////                end
                
////            else if(D==1)
////                begin
////                    pwm_storage = 49_999;
////                end
                
//            else
//                pwm_storage = 189_999;
//         end 
