module tb_alu_4bit;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] result;
wire cout;

alu_4bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .cout(cout)
);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars;

    // ADD
    A = 4'b0101;
    B = 4'b0011;
    sel = 3'b000;
    #10;

    // ADD with carry
    A = 4'b1111;
    B = 4'b0001;
    sel = 3'b000;
    #10;

    // SUB
    A = 4'b1001;
    B = 4'b0011;
    sel = 3'b001;
    #10;

    // AND example
    A = 4'b1010;
    B = 4'b1100;
    sel = 3'b010;
    #10;

    // OR example
    A = 4'b1010;
    B = 4'b1100;
    sel = 3'b011;
    #10;

    // XOR example
    A = 4'b1010;
    B = 4'b1100;
    sel = 3'b100;
    #10;

    // Another completely different example
    A = 4'b0110;
    B = 4'b0101;
    sel = 3'b010;
    #10;

    $finish;

end

endmodule
