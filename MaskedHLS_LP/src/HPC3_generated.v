module HPC3(
    clk,
    a0,
    a1,
    b0,
    b1,
    r01,
    p01,
    c0,
    c1
);
//INPUTS
    input clk;
    input  [7:0] a0;
    input  [7:0] a1;
    input  [7:0] b0;
    input  [7:0] b1;
    input  [7:0] r01;
    input  [7:0] p01;
//OUTPUTS
    output reg  [7:0] c0;
    output reg  [7:0] c1;
//Intermediate values
    wire [7:0] u00;
    reg [7:0] temp_hpc3_v_1_order0;
    wire [7:0] v01;
    wire [7:0] a_share_neg_hpc3_w_1_order0;
    wire [7:0] temp_hpc3_w_1_order0;
    reg [7:0] w01;
    wire [7:0] u01;
    reg [7:0] temp_hpc3_v_1_order1;
    wire [7:0] v10;
    wire [7:0] a_share_neg_hpc3_w_1_order1;
    wire [7:0] temp_hpc3_w_1_order1;
    reg [7:0] w10;
    wire [7:0] u10;
    wire [7:0] u11;
    reg [7:0] u00_reg;
    reg [7:0] u11_reg;

    assign u00 = (a0 & b0);
    assign v01 = (temp_hpc3_v_1_order0 & a0);
    assign a_share_neg_hpc3_w_1_order0 = !a0;
    assign temp_hpc3_w_1_order0 = (a_share_neg_hpc3_w_1_order0 & r01);
    assign u01 = (v01 ^ w01);
    assign v10 = (temp_hpc3_v_1_order1 & a1);
    assign a_share_neg_hpc3_w_1_order1 = !a1;
    assign temp_hpc3_w_1_order1 = (a_share_neg_hpc3_w_1_order1 & r01);
    assign u10 = (v10 ^ w10);
    assign u11 = (a1 & b1);

    always @(posedge clk) begin
        temp_hpc3_v_1_order0 <= (b1 ^ r01);
        w01 <= (temp_hpc3_w_1_order0 ^ p01);
        temp_hpc3_v_1_order1 <= (b0 ^ r01);
        w10 <= (temp_hpc3_w_1_order1 ^ p01);
        u00_reg <= u00;
        c0 <= (u00_reg ^ u01);
        u11_reg <= u11;
        c1 <= (u10 ^ u11_reg);
    end

endmodule

