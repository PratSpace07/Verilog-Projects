module BCD(input [3:0] b_bcd, [3:0] a_bcd, cin, output [3:0] sum_bcd, cout);
//wire w1,w2,w3,w4,w5,w6; //instead crate a vector wire to correcpond to the sum wire
wire [3:0]sumwire, w1,w2,w3;
wire [3:0]b_rca_2;  //we give thsi wire think why

FourbitRCA RCA1(.a_rca(a_bcd), .b_rca(b_bcd),.c(), .sum_rca(sumwire), .carry_rca());
//now connect to wire 2 ND 3 , THEN to rhe otehr rca

and (w1, sumwire[3], sumwire[2]);
and (w2, sumwire[3], sumwire[1]);
or (w3,w1,w2);
