
class driver;
rand trans T;//earase the t 
mailbox #(trans) mbx; //create a mailbox to hold transaction----declear 
virtual adder_if aif;


function  new (virtual adder_if aif, mailbox #(trans) mbx);
this.mbx = mbx;
this.aif = aif;
T = new();
endfunction

///generate signals and apply them to dut using interface

task run();
forever
 begin

mbx.get(T); // getting the transaction from the mailbox
$display("driver :");
T.display();
aif.drv.a =T.a;
aif.drv.b=T.b;
#5;
end

endtask

endclass