module FourbitRCA(input [3:0] a_rca, [3:0] b_rca, c, output [3:0] sum_rca, carry_rca );
wire w1,w2,w3;

Full_Adder FA1(.a(a_rca[0]), .b(b_rca[0]), .cin(c), .s(sum_rca[0]));
Full_Adder FA2(.a(a_rca[1]), .b(b_rca[1]), .c(w1), .s(sum_rca[1]));
Full_Adder FA3(.a(a_rca[2]), .b(b_rca[2]), .c(w2), .s(sum_rca[2]));
Full_Adder FA4(.a(a_rca[3]), .b(b_rca[3]), .s(sum_rca[3]),.c(carry_rca));
