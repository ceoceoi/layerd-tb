class generator;

mailbox #(trans) mbx; //create a mailbox to hold transaction----declear 
trans T;
event done;
function new (mailbox #(trans) mbx);
this.mbx = mbx;
   T = new();
endfunction
/////////////////////////////////////////////
///generate signals and apply them to dut using interface
task run();
for (int i=0; i<5; i++) begin
if (!T.randomize()) 
    $display("T.randomization failed");
else 
begin
    mbx.put(T);
    $display("generator: ");
    T.display();
    #5;
            end

        end

        ->done;
    endtask

endclass