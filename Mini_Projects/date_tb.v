`timescale 1ns / 1ps

module date_tb();

    reg clk, rst, tx_enable;
    wire date_detected, serial_data, tx_done;

    Happy_Birthday_1 dut (
        .clk(clk),
        .rst(rst),
        .tx_enable(tx_enable),
        .date_detected(date_detected),
        .serial_data(serial_data),
        .tx_done(tx_done)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        tx_enable = 0;
        #20 rst = 0;
        #10 tx_enable = 1;
        #5000 $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b | rst=%b | tx_enable=%b | serial_data=%b | tx_done=%b | date_detected=%b",
                 $time, clk, rst, tx_enable, serial_data, tx_done, date_detected);
    end

endmodule
