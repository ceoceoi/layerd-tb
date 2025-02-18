module adder( input [3:0] a,b,
output logic [4:0] c);

// assign c =a+b;

always_comb
c = a + b;
endmodule 

