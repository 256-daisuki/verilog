module adder8(
    //入出力ポート
    input wire       clk,
    input wire [7:0] in0, //8bitのin0
    input wire [7:0] in1,
    output reg [7:0] out
);
    always @(posedge clk) begin
        out <= in0 + in1;
    end
endmodule