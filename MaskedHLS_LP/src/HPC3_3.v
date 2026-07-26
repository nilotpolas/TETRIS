module HPC3(
    clk,
    a0,
    a1,
    a2,
    b0,
    b1,
    b2,
    r01,
    r02,
    r12,
    p01,
    p02,
    p12,
    c0,
    c1,
    c2
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  a2;
    input  b0;
    input  b1;
    input  b2;
    input  r01;
    input  r02;
    input  r12;
    input  p01;
    input  p02;
    input  p12;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
//Intermediate values
    wire u00;
    reg temp_hpc3_v_2_order0;
    wire v01;
    wire a_share_neg_hpc3_w_2_order0;
    wire temp_hpc3_w_2_order0;
    reg w01;
    wire u01;
    reg temp_hpc3_v_2_order1;
    wire v02;
    wire a_share_neg_hpc3_w_2_order1;
    wire temp_hpc3_w_2_order1;
    reg w02;
    wire u02;
    reg temp_hpc3_v_2_order2;
    wire v10;
    wire a_share_neg_hpc3_w_2_order2;
    wire temp_hpc3_w_2_order2;
    reg w10;
    wire u10;
    wire u11;
    reg temp_hpc3_v_2_order3;
    wire v12;
    wire a_share_neg_hpc3_w_2_order3;
    wire temp_hpc3_w_2_order3;
    reg w12;
    wire u12;
    reg temp_hpc3_v_2_order4;
    wire v20;
    wire a_share_neg_hpc3_w_2_order4;
    wire temp_hpc3_w_2_order4;
    reg w20;
    wire u20;
    reg temp_hpc3_v_2_order5;
    wire v21;
    wire a_share_neg_hpc3_w_2_order5;
    wire temp_hpc3_w_2_order5;
    reg w21;
    wire u21;
    wire u22;
    reg u00_reg;
    wire t1;
    reg u11_reg;
    wire t2;
    wire t3;
    reg u22_reg;

    assign u00 = (a0 & b0);
    assign v01 = (temp_hpc3_v_2_order0 & a0);
    assign a_share_neg_hpc3_w_2_order0 = !a0;
    assign temp_hpc3_w_2_order0 = (a_share_neg_hpc3_w_2_order0 & r01);
    assign u01 = (v01 ^ w01);
    assign v02 = (temp_hpc3_v_2_order1 & a0);
    assign a_share_neg_hpc3_w_2_order1 = !a0;
    assign temp_hpc3_w_2_order1 = (a_share_neg_hpc3_w_2_order1 & r02);
    assign u02 = (v02 ^ w02);
    assign v10 = (temp_hpc3_v_2_order2 & a1);
    assign a_share_neg_hpc3_w_2_order2 = !a1;
    assign temp_hpc3_w_2_order2 = (a_share_neg_hpc3_w_2_order2 & r01);
    assign u10 = (v10 ^ w10);
    assign u11 = (a1 & b1);
    assign v12 = (temp_hpc3_v_2_order3 & a1);
    assign a_share_neg_hpc3_w_2_order3 = !a1;
    assign temp_hpc3_w_2_order3 = (a_share_neg_hpc3_w_2_order3 & r12);
    assign u12 = (v12 ^ w12);
    assign v20 = (temp_hpc3_v_2_order4 & a2);
    assign a_share_neg_hpc3_w_2_order4 = !a2;
    assign temp_hpc3_w_2_order4 = (a_share_neg_hpc3_w_2_order4 & r02);
    assign u20 = (v20 ^ w20);
    assign v21 = (temp_hpc3_v_2_order5 & a2);
    assign a_share_neg_hpc3_w_2_order5 = !a2;
    assign temp_hpc3_w_2_order5 = (a_share_neg_hpc3_w_2_order5 & r12);
    assign u21 = (v21 ^ w21);
    assign u22 = (a2 & b2);
    assign t1 = (u00_reg ^ u01);
    assign t2 = (u10 ^ u11_reg);
    assign t3 = (u20 ^ u21);

    always @(posedge clk) begin
        temp_hpc3_v_2_order0 <= (b1 ^ r01);
        w01 <= (temp_hpc3_w_2_order0 ^ p01);
        temp_hpc3_v_2_order1 <= (b2 ^ r02);
        w02 <= (temp_hpc3_w_2_order1 ^ p02);
        temp_hpc3_v_2_order2 <= (b0 ^ r01);
        w10 <= (temp_hpc3_w_2_order2 ^ p01);
        temp_hpc3_v_2_order3 <= (b2 ^ r12);
        w12 <= (temp_hpc3_w_2_order3 ^ p12);
        temp_hpc3_v_2_order4 <= (b0 ^ r02);
        w20 <= (temp_hpc3_w_2_order4 ^ p02);
        temp_hpc3_v_2_order5 <= (b1 ^ r12);
        w21 <= (temp_hpc3_w_2_order5 ^ p12);
        u00_reg <= u00;
        c0 <= (t1 ^ u02);
        u11_reg <= u11;
        c1 <= (t2 ^ u12);
        u22_reg <= u22;
        c2 <= (t3 ^ u22_reg);
    end

endmodule

