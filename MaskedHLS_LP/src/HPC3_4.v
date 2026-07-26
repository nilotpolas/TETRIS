module HPC3(
    clk,
    a0,
    a1,
    a2,
    a3,
    b0,
    b1,
    b2,
    b3,
    r01,
    r02,
    r03,
    r12,
    r13,
    r23,
    p01,
    p02,
    p03,
    p12,
    p13,
    p23,
    c0,
    c1,
    c2,
    c3
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  a2;
    input  a3;
    input  b0;
    input  b1;
    input  b2;
    input  b3;
    input  r01;
    input  r02;
    input  r03;
    input  r12;
    input  r13;
    input  r23;
    input  p01;
    input  p02;
    input  p03;
    input  p12;
    input  p13;
    input  p23;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
//Intermediate values
    wire u00;
    reg temp_hpc3_v_3_order0;
    wire v01;
    wire a_share_neg_hpc3_w_3_order0;
    wire temp_hpc3_w_3_order0;
    reg w01;
    wire u01;
    reg temp_hpc3_v_3_order1;
    wire v02;
    wire a_share_neg_hpc3_w_3_order1;
    wire temp_hpc3_w_3_order1;
    reg w02;
    wire u02;
    reg temp_hpc3_v_3_order2;
    wire v03;
    wire a_share_neg_hpc3_w_3_order2;
    wire temp_hpc3_w_3_order2;
    reg w03;
    wire u03;
    reg temp_hpc3_v_3_order3;
    wire v10;
    wire a_share_neg_hpc3_w_3_order3;
    wire temp_hpc3_w_3_order3;
    reg w10;
    wire u10;
    wire u11;
    reg temp_hpc3_v_3_order4;
    wire v12;
    wire a_share_neg_hpc3_w_3_order4;
    wire temp_hpc3_w_3_order4;
    reg w12;
    wire u12;
    reg temp_hpc3_v_3_order5;
    wire v13;
    wire a_share_neg_hpc3_w_3_order5;
    wire temp_hpc3_w_3_order5;
    reg w13;
    wire u13;
    reg temp_hpc3_v_3_order6;
    wire v20;
    wire a_share_neg_hpc3_w_3_order6;
    wire temp_hpc3_w_3_order6;
    reg w20;
    wire u20;
    reg temp_hpc3_v_3_order7;
    wire v21;
    wire a_share_neg_hpc3_w_3_order7;
    wire temp_hpc3_w_3_order7;
    reg w21;
    wire u21;
    wire u22;
    reg temp_hpc3_v_3_order8;
    wire v23;
    wire a_share_neg_hpc3_w_3_order8;
    wire temp_hpc3_w_3_order8;
    reg w23;
    wire u23;
    reg temp_hpc3_v_3_order9;
    wire v30;
    wire a_share_neg_hpc3_w_3_order9;
    wire temp_hpc3_w_3_order9;
    reg w30;
    wire u30;
    reg temp_hpc3_v_3_order10;
    wire v31;
    wire a_share_neg_hpc3_w_3_order10;
    wire temp_hpc3_w_3_order10;
    reg w31;
    wire u31;
    reg temp_hpc3_v_3_order11;
    wire v32;
    wire a_share_neg_hpc3_w_3_order11;
    wire temp_hpc3_w_3_order11;
    reg w32;
    wire u32;
    wire u33;
    reg u00_reg;
    wire t1;
    wire t2;
    reg u11_reg;
    wire t3;
    wire t4;
    wire t5;
    reg u22_reg;
    wire t6;
    wire t7;
    wire t8;
    reg u33_reg;

    assign u00 = (a0 & b0);
    assign v01 = (temp_hpc3_v_3_order0 & a0);
    assign a_share_neg_hpc3_w_3_order0 = !a0;
    assign temp_hpc3_w_3_order0 = (a_share_neg_hpc3_w_3_order0 & r01);
    assign u01 = (v01 ^ w01);
    assign v02 = (temp_hpc3_v_3_order1 & a0);
    assign a_share_neg_hpc3_w_3_order1 = !a0;
    assign temp_hpc3_w_3_order1 = (a_share_neg_hpc3_w_3_order1 & r02);
    assign u02 = (v02 ^ w02);
    assign v03 = (temp_hpc3_v_3_order2 & a0);
    assign a_share_neg_hpc3_w_3_order2 = !a0;
    assign temp_hpc3_w_3_order2 = (a_share_neg_hpc3_w_3_order2 & r03);
    assign u03 = (v03 ^ w03);
    assign v10 = (temp_hpc3_v_3_order3 & a1);
    assign a_share_neg_hpc3_w_3_order3 = !a1;
    assign temp_hpc3_w_3_order3 = (a_share_neg_hpc3_w_3_order3 & r01);
    assign u10 = (v10 ^ w10);
    assign u11 = (a1 & b1);
    assign v12 = (temp_hpc3_v_3_order4 & a1);
    assign a_share_neg_hpc3_w_3_order4 = !a1;
    assign temp_hpc3_w_3_order4 = (a_share_neg_hpc3_w_3_order4 & r12);
    assign u12 = (v12 ^ w12);
    assign v13 = (temp_hpc3_v_3_order5 & a1);
    assign a_share_neg_hpc3_w_3_order5 = !a1;
    assign temp_hpc3_w_3_order5 = (a_share_neg_hpc3_w_3_order5 & r13);
    assign u13 = (v13 ^ w13);
    assign v20 = (temp_hpc3_v_3_order6 & a2);
    assign a_share_neg_hpc3_w_3_order6 = !a2;
    assign temp_hpc3_w_3_order6 = (a_share_neg_hpc3_w_3_order6 & r02);
    assign u20 = (v20 ^ w20);
    assign v21 = (temp_hpc3_v_3_order7 & a2);
    assign a_share_neg_hpc3_w_3_order7 = !a2;
    assign temp_hpc3_w_3_order7 = (a_share_neg_hpc3_w_3_order7 & r12);
    assign u21 = (v21 ^ w21);
    assign u22 = (a2 & b2);
    assign v23 = (temp_hpc3_v_3_order8 & a2);
    assign a_share_neg_hpc3_w_3_order8 = !a2;
    assign temp_hpc3_w_3_order8 = (a_share_neg_hpc3_w_3_order8 & r23);
    assign u23 = (v23 ^ w23);
    assign v30 = (temp_hpc3_v_3_order9 & a3);
    assign a_share_neg_hpc3_w_3_order9 = !a3;
    assign temp_hpc3_w_3_order9 = (a_share_neg_hpc3_w_3_order9 & r03);
    assign u30 = (v30 ^ w30);
    assign v31 = (temp_hpc3_v_3_order10 & a3);
    assign a_share_neg_hpc3_w_3_order10 = !a3;
    assign temp_hpc3_w_3_order10 = (a_share_neg_hpc3_w_3_order10 & r13);
    assign u31 = (v31 ^ w31);
    assign v32 = (temp_hpc3_v_3_order11 & a3);
    assign a_share_neg_hpc3_w_3_order11 = !a3;
    assign temp_hpc3_w_3_order11 = (a_share_neg_hpc3_w_3_order11 & r23);
    assign u32 = (v32 ^ w32);
    assign u33 = (a3 & b3);
    assign t1 = (u00_reg ^ u01);
    assign t2 = (t1 ^ u02);
    assign t3 = (u10 ^ u11_reg);
    assign t4 = (t3 ^ u12);
    assign t5 = (u20 ^ u21);
    assign t6 = (t5 ^ u22_reg);
    assign t7 = (u30 ^ u31);
    assign t8 = (t7 ^ u32);

    always @(posedge clk) begin
        temp_hpc3_v_3_order0 <= (b1 ^ r01);
        w01 <= (temp_hpc3_w_3_order0 ^ p01);
        temp_hpc3_v_3_order1 <= (b2 ^ r02);
        w02 <= (temp_hpc3_w_3_order1 ^ p02);
        temp_hpc3_v_3_order2 <= (b3 ^ r03);
        w03 <= (temp_hpc3_w_3_order2 ^ p03);
        temp_hpc3_v_3_order3 <= (b0 ^ r01);
        w10 <= (temp_hpc3_w_3_order3 ^ p01);
        temp_hpc3_v_3_order4 <= (b2 ^ r12);
        w12 <= (temp_hpc3_w_3_order4 ^ p12);
        temp_hpc3_v_3_order5 <= (b3 ^ r13);
        w13 <= (temp_hpc3_w_3_order5 ^ p13);
        temp_hpc3_v_3_order6 <= (b0 ^ r02);
        w20 <= (temp_hpc3_w_3_order6 ^ p02);
        temp_hpc3_v_3_order7 <= (b1 ^ r12);
        w21 <= (temp_hpc3_w_3_order7 ^ p12);
        temp_hpc3_v_3_order8 <= (b3 ^ r23);
        w23 <= (temp_hpc3_w_3_order8 ^ p23);
        temp_hpc3_v_3_order9 <= (b0 ^ r03);
        w30 <= (temp_hpc3_w_3_order9 ^ p03);
        temp_hpc3_v_3_order10 <= (b1 ^ r13);
        w31 <= (temp_hpc3_w_3_order10 ^ p13);
        temp_hpc3_v_3_order11 <= (b2 ^ r23);
        w32 <= (temp_hpc3_w_3_order11 ^ p23);
        u00_reg <= u00;
        c0 <= (t2 ^ u03);
        u11_reg <= u11;
        c1 <= (t4 ^ u13);
        u22_reg <= u22;
        c2 <= (t6 ^ u23);
        u33_reg <= u33;
        c3 <= (t8 ^ u33_reg);
    end

endmodule

