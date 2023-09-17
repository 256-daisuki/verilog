module hafladder(
    input [1:0] i_p0,
    input [1:0] i_p1,
    output [1:0] o_p0,
    output [1:0] o_p1
);

    assign o_p0 = i_p0 ^ i_p1;
    assign o_p1 = i_p0 & i_p1;

endmodule