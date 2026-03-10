module Full_Adder(input a,b,cin ,output s,c);
wire w1,w2,w3;
xor(s,a,b,cin);
and (w1,a,b);
xor (w2,a,b);
and (w3,cin,w2);
or (c,w2,w3);
endmodule
