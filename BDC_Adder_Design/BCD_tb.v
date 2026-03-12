`timescale 1ns / 1ps

module BCD_tb;

    // Inputs
    reg [3:0] a_bcd;
    reg [3:0] b_bcd;
    reg cin;

    // Outputs
    wire [3:0] sum_bcd;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    BCD uut (
        .a_bcd(a_bcd),
        .b_bcd(b_bcd),
        .cin(cin),
        .sum_bcd(sum_bcd),
        .cout(cout)
    );

    initial begin
        
        // Monitor values
        $monitor("Time=%0t | A=%d B=%d Cin=%b | Sum=%d Cout=%b",
                  $time, a_bcd, b_bcd, cin, sum_bcd, cout);

        // Test cases
        a_bcd = 4'd0; b_bcd = 4'd0; cin = 0;
        #10;

        a_bcd = 4'd2; b_bcd = 4'd3; cin = 0;  // 2 + 3 = 5
        #10;

        a_bcd = 4'd4; b_bcd = 4'd5; cin = 0;  // 4 + 5 = 9
        #10;

        a_bcd = 4'd5; b_bcd = 4'd5; cin = 0;  // 5 + 5 = 10 (BCD correction)
        #10;

        a_bcd = 4'd7; b_bcd = 4'd8; cin = 0;  // 7 + 8 = 15
        #10;

        a_bcd = 4'd9; b_bcd = 4'd9; cin = 0;  // 9 + 9 = 18
        #10;

        a_bcd = 4'd6; b_bcd = 4'd3; cin = 1;  // carry input test
        #10;

        $finish;
    end

endmodule
