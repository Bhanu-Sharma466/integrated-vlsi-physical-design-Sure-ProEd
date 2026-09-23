module Happy_Birthday_1(
    input clk, rst,
    input tx_enable,
    output date_detected,
    output serial_data,
    output tx_done
);

    wire serial_data_w;
    wire tx_done_w;

    Happy_birthday_generator TX (
        .clk(clk),
        .rst(rst),
        .tx_enable(tx_enable),
        .serial_data(serial_data_w),
        .tx_done(tx_done_w)
    );

    Happy_birthday_detector RX (
        .clk(clk),
        .rst(rst),
        .serial_data(serial_data_w),
        .date_detected(date_detected)
    );

    assign serial_data = serial_data_w;
    assign tx_done     = tx_done_w;
endmodule
