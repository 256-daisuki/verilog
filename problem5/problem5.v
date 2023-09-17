module problem5 (
    input i_clk,
    input [1:0] i_ctlr,
    input [15:0] i_data_0,
    input [15:0] i_data_1,
    input [15:0] i_data_2,
    input [15:0] i_data_3,
    output reg [15:0] o_data
);

    always @(posedge i_clk) begin
        case (i_ctlr)
            2'b00 : o_data <= i_data_0;
            2'b01 : o_data <= i_data_1;
            2'b02 : o_data <= i_data_2;
            2'b03 : o_data <= i_data_3;
        endcase
    end
endmodule