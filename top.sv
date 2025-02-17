`include "/trans.sv"
`include "/generator.sv"
`include "/driver.sv"
`include "/adder.sv"  
`include "/interface.sv"
`include "/checker.sv"
module top;
event done_event;
 adder_if aif();
adder a1(.a(aif.a), .b(aif.b), .c(aif.c));

driver drv; //handle
generator gen;
checker chk;
mailbox #(trans) mbx;

initial begin
mbx = new();
drv = new(aif,mbx); //aif-----> dut ,mbx .....> gen
gen = new(mbx);// mbx.....>drv
chk = new(aif);


done_event = gen.done;
fork

gen.run();
drv.run();
chk.run();

join_none   
wait(done_event.triggered)
$finish;
end

initial begin
    $monitor("[MONITOR]a = %d, b = %d, c=%d", aif.a, aif.b, aif.c);
end
endmodule
