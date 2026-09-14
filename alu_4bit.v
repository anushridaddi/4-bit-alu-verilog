module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] sel,
    output reg [3:0] result,
    output reg cout
);

always @(*) begin
  result=4'b0000;
  cout = 1'b0;

    case(sel)

        3'b000: begin
            {cout, result} = A + B;
        end

        3'b001: begin
            result = A - B;
        end

        3'b010: begin
            result = A & B;
        end

        3'b011: begin
            result = A | B;
        end

        3'b100: begin
            result = A ^ B;
        end

        default: begin
            result = 4'b0000;
            cout   = 1'b0;
        end

    endcase

end

endmodule
