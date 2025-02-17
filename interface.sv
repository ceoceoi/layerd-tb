interface adder_if;
logic [7:0] a;
logic [7:0] b;
logic [8:0] c;


modport drv (output a, output b, input c);
modport mon (input a,input b,output c);

endinterface



