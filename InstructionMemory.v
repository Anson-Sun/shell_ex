module InstructionMemory(Address,Insturction);
    input [31:0]Address;
    output reg [31:0]Instruction;

    reg [31:0] memory[0:255];

    initial begin
        $readmemh("InstructionMemory.txt,memory");
    end

    always @(*)begin
        if (
            ( Address >= 32'h_9fc0_0000 && Address < 32'h_9fc0_0400)
          ||( Address >= 32'h_0400_0000 && Address < 32'h_0040_0400)
        )
        begin
            Instruction=memory[Address[9:2]];
            $display("[%x] %x", Address,Instruction);
        end
        else begin
            Instruction=32'hx;
            $display("[%x] %x , Invalid Address", Address , Instruction);
        end
    end
endmodule