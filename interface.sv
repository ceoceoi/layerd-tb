interface adder_if;
logic [3:0] a;
logic [3:0] b;
logic [4:0] c;


modport drv (output a, output b, input c);
modport mon (input a,input b,output c);

endinterface



