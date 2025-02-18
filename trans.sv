class trans;
randc bit  [3:0] a;// i can use logic here but the optimizing use bit (2-state bit) 
randc bit [3:0] b;
bit [4:0] c;

    function display();
        $display("a = %d, b = %d, c = %d",a,b,c);
    endfunction
    
    function trans copy();
        copy = new;
        copy.a = this.a;
        copy.b = this.b;
        copy.c = this.c;
    endfunction


endclass