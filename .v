module datamemory(
    input           clock,
    input   [31:0]  address,
    input           memoryread,
    input           memorywrite,
    input   [31:0]  writedata,
    output reg[31:0]readdata
);

    reg [7:0]memory[0:4095];
    wire [11:0]addr;

    assign addr=address[11:0];

    always @(posedge clock)
endmodule