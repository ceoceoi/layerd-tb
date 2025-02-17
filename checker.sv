class checker;

virtual adder_if aif;


function new (virtual adder_if aif);
this.aif = aif;
endfunction

///generate signals and apply them to dut using interface

task run();
forever
 begin
@(aif.a, aif.b, aif.c);// checking any change in input or output
$display("monitor: ");
$display("a = %d, b = %d, c = %d,", aif.mon.a, aif.mon.b, aif.mon.c);

if((aif.mon.a + aif.mon.b) != aif.mon.c)
$display("test failed");
else 
$display("test passed");

end

endtask

endclass