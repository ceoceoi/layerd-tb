module adder( input [7:0] a,b,
output logic [8:0] c);

// assign c =a+b;

always_comb
c = a + b;
endmodule 

