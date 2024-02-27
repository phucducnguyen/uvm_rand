// class s0 template
class s0 extends uvm_sequence #(itm) ;
  `uvm_object_utils(s0)

itm mx;

   function new(string name="s0");
      super.new(name);
   endfunction : new

   task doreset(input int nr);
     repeat(nr) begin
       start_item(mx);
       mx.opcode=E_reset;
       mx.randomize();
       finish_item(mx);
     end
   endtask : doreset
   
   task donop(input int nr);
     repeat(nr) begin
       start_item(mx);
       mx.opcode=E_nop;
       mx.randomize();
       finish_item(mx);
     end
   endtask : donop

   // Additional test cases
    task dopush(input int nr);
        repeat(nr) begin
            start_item(mx);
            mx.opcode = E_push;
            mx.randomize();
            finish_item(mx);
        end
    endtask : dopush

    task dopushcomplete(input int nr);
        repeat(nr) begin
            start_item(mx);
            mx.opcode = E_pushcomplete;
            mx.randomize();
            finish_item(mx);
        end
    endtask : dopushcomplete
   
// A sequence body template. put tests there
   task body;
     mx=itm::type_id::create("seq_item");
     doreset(2000);
     donop(2000);
    // Put your stuff here...
     dopush(2000);
     dopushcomplete(2000);
    //
   endtask : body
endclass : s0
