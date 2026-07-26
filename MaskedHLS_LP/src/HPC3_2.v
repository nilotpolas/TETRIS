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
    input  a0;
    input  a1;
    input  b0;
    input  b1;
    input  r01;
    input  p01;
//OUTPUTS
    output reg  c0;
    output reg  c1;
//Intermediate values
    wire u00;
    reg temp_hpc3_v_1_order0;
    wire v01;
    wire a_share_neg_hpc3_w_1_order0;
    wire temp_hpc3_w_1_order0;
    reg w01;
    wire u01;
    reg temp_hpc3_v_1_order1;
    wire v10;
    wire a_share_neg_hpc3_w_1_order1;
    wire temp_hpc3_w_1_order1;
    reg w10;
    wire u10;
    wire u11;
    reg u00_reg;
    reg u11_reg;

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

