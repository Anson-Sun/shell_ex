`include "mips.vh"
`define  DEBUG
module ProgramCounter(
    input Reset_N,clock,clock_enable,
    input [31:0]NextPC,
    output reg [31:0]CurrentPC
);

    initial begin
        CurrentPC=`INIT_BOOT_ADDRESS;
    end

    always @(posedge clock)begin
        if(Reset_N==0)
            CurrentPC<=`INIT_BOOT_ADDRESS;
            else begin
                if(clock_enable==1)
                    CurrentPC<=NextPC;
                    else 
                        CurrentPC<=CurrentPC;
            end
    end

    always @(posedge clock)
endmodule