module halfadder_tb;

    // テストベンチ用の信号を定義
    reg [1:0] i_p0;
    reg [1:0] i_p1;
    wire [1:0] o_p0;
    wire [1:0] o_p1;

    // 半加算器のインスタンスを生成
    hafladder UUT (
        .i_p0(i_p0),
        .i_p1(i_p1),
        .o_p0(o_p0),
        .o_p1(o_p1)
    );

    // 波形トレースを有効にする
    initial begin
        // パターン1: i_p0 = 0, i_p1 = 0
        i_p0 = 1'b0;
        i_p1 = 1'b0;
        #1; // 1ユニット時間待つ
        $display("Input: %b %b, Output: %b %b", i_p1, i_p0, o_p1, o_p0);

        // パターン2: i_p0 = 1, i_p1 = 0
        i_p0 = 1'b1;
        i_p1 = 1'b0;
        #1;
        $display("Input: %b %b, Output: %b %b", i_p1, i_p0, o_p1, o_p0);

        // パターン3: i_p0 = 0, i_p1 = 1
        i_p0 = 1'b0;
        i_p1 = 1'b1;
        #1;
        $display("Input: %b %b, Output: %b %b", i_p1, i_p0, o_p1, o_p0);

        // パターン4: i_p0 = 1, i_p1 = 1
        i_p0 = 1'b1;
        i_p1 = 1'b1;
        #1;
        $display("Input: %b %b, Output: %b %b", i_p1, i_p0, o_p1, o_p0);

        // シミュレーション終了
        $finish;
    end

endmodule