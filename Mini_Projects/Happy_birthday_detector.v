`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 19:50:00
// Design Name: Happy Birthday Sequence Detector
// Module Name: Happy_birthday_detector
//////////////////////////////////////////////////////////////////////////////////

module Happy_birthday_detector(
    input clk,
    input rst,
    input serial_data,
    output reg date_detected
);
    
    // State encoding
    parameter S0 = 4'd0,  
              S1 = 4'd1,
              S2 = 4'd2,
              S3 = 4'd3,
              S4 = 4'd4,
              S5 = 4'd5,
              S6 = 4'd6,
              S7 = 4'd7,
              S8 = 4'd8,
              S9 = 4'd9; 

    reg [3:0] state, next_state;

    
    always @(*) begin
        case(state)
            S0 : next_state = (serial_data) ? S0 : S1;
            S1 : next_state = (serial_data) ? S2 : S1;
            S2 : next_state = (serial_data) ? S3 : S2;
            S3 : next_state = (serial_data) ? S4 : S3;
            S4 : next_state = (serial_data) ? S4 : S5;
            S5 : next_state = (serial_data) ? S6 : S5;
            S6 : next_state = (serial_data) ? S7 : S6;
            S7 : next_state = (serial_data) ? S8 : S7;
            S8 : next_state = (serial_data) ? S8 : S9;
            S9 : next_state = S0;
            default: next_state = S0;
        endcase
    end

    
    always @(posedge clk) begin
        if (rst) begin
            state <= S0;
            date_detected <= 1'b0;
        end 
        else begin
            state <= next_state;

            
            if (next_state == S9)
                date_detected <= 1'b1;
            else
                date_detected <= 1'b0;
        end
    end

endmodule
