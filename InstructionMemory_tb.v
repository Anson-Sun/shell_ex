module InstructionMemory_tb;

    reg [31:0]Address;
    wire [31:0]Instruction;
    integer i;

    InstructionMemory u1(Address,Instruction);

    initial begin
         Address=0;
         #100;
         Address=32'h_0040_0000;
         for (i = 0;i<20 ;i=i+1 ) begin
             #10 Address=Address+4;
         end
         #10 $stop;
    end
endmodule