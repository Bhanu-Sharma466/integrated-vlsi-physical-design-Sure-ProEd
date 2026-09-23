`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Buddy
// Design Name: Happy Birthday Generator
//////////////////////////////////////////////////////////////////////////////////

module Happy_birthday_generator(
    input clk,
    input rst,
    input tx_enable,            // start signal for generator
    output reg serial_data,     // 1-bit serial output
    output reg tx_done          // goes high after 10 bits transmitted
);

    reg [9:0] data;             // pattern data (will increment 0 ? 1023)
    reg [9:0] temp_data;        // temporary register for shifting
    reg [3:0] bit_count;        // counts 0 to 9 bits
    reg sending,i_valid;                // internal flag: 1 when shifting active

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data        <= 10'b0;
            temp_data   <= 10'b0;
            bit_count   <= 0;
            sending     <= 0;
            serial_data <= 0;
            tx_done     <= 0;
        end
        else if (tx_enable && !sending) begin
            // Start new 10-bit frame
            temp_data <= data;              // Load pattern
            sending   <= 1'b1;
            bit_count <= 0;
            tx_done   <= 0;
        end
        else if (sending) begin
            // Shift out 1 bit per clock
            serial_data <= temp_data[0];
            temp_data   <= {1'b0, temp_data[9:1]};
            bit_count   <= bit_count + 1;
            if (bit_count == 4'd9) begin
                sending <= 0;
                tx_done <= 1'b1;            // completed 10 bits
                data    <= data + 1'b1;     // next pattern
            end
            else begin
                tx_done <= 0;
            end
        end
        else begin
            tx_done <= 0;
        end
    end

endmodule
