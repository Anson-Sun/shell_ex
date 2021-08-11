module RegisterFile(
    input clock,
    input [4:0]ReadReg1,ReadReg2,WriteReg,
    input [31:0] WriteData,RegWrite,
    output reg [31:0] ReadData1,ReadData2
);
    integer i;
    
    reg [31:0]general_purpose_resgister[0:31];

    initial begin
        for (i=0;i<32;i=i+1)
            general_purpose_resgister[i]=0;
    end

    always @(posedge clock)begin
        if(RegWrite ==1 && WriteReg >0)
        begin
            general_purpose_resgister[WriteReg]<=WriteData;
        end
    end

    always @(*)begin
        ReadData1=general_purpose_resgister[ReadReg1];
        ReadData2=general_purpose_resgister[ReadReg2];
    end