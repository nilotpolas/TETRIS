module HPC3(
    clk,
    a0,
    a1,
    a2,
    a3,
    a4,
    b0,
    b1,
    b2,
    b3,
    b4,
    r01,
    r02,
    r03,
    r04,
    r12,
    r13,
    r14,
    r23,
    r24,
    r34,
    p01,
    p02,
    p03,
    p04,
    p12,
    p13,
    p14,
    p23,
    p24,
    p34,
    c0,
    c1,
    c2,
    c3,
    c4
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  a2;
    input  a3;
    input  a4;
    input  b0;
    input  b1;
    input  b2;
    input  b3;
    input  b4;
    input  r01;
    input  r02;
    input  r03;
    input  r04;
    input  r12;
    input  r13;
    input  r14;
    input  r23;
    input  r24;
    input  r34;
    input  p01;
    input  p02;
    input  p03;
    input  p04;
    input  p12;
    input  p13;
    input  p14;
    input  p23;
    input  p24;
    input  p34;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
    output reg  c4;
//Intermediate values
    wire u00;
    reg temp_hpc3_v_4_order0;
    wire v01;
    wire a_share_neg_hpc3_w_4_order0;
    wire temp_hpc3_w_4_order0;
    reg w01;
    wire u01;
    reg temp_hpc3_v_4_order1;
    wire v02;
    wire a_share_neg_hpc3_w_4_order1;
    wire temp_hpc3_w_4_order1;
    reg w02;
    wire u02;
    reg temp_hpc3_v_4_order2;
    wire v03;
    wire a_share_neg_hpc3_w_4_order2;
    wire temp_hpc3_w_4_order2;
    reg w03;
    wire u03;
    reg temp_hpc3_v_4_order3;
    wire v04;
    wire a_share_neg_hpc3_w_4_order3;
    wire temp_hpc3_w_4_order3;
    reg w04;
    wire u04;
    reg temp_hpc3_v_4_order4;
    wire v10;
    wire a_share_neg_hpc3_w_4_order4;
    wire temp_hpc3_w_4_order4;
    reg w10;
    wire u10;
    wire u11;
    reg temp_hpc3_v_4_order5;
    wire v12;
    wire a_share_neg_hpc3_w_4_order5;
    wire temp_hpc3_w_4_order5;
    reg w12;
    wire u12;
    reg temp_hpc3_v_4_order6;
    wire v13;
    wire a_share_neg_hpc3_w_4_order6;
    wire temp_hpc3_w_4_order6;
    reg w13;
    wire u13;
    reg temp_hpc3_v_4_order7;
    wire v14;
    wire a_share_neg_hpc3_w_4_order7;
    wire temp_hpc3_w_4_order7;
    reg w14;
    wire u14;
    reg temp_hpc3_v_4_order8;
    wire v20;
    wire a_share_neg_hpc3_w_4_order8;
    wire temp_hpc3_w_4_order8;
    reg w20;
    wire u20;
    reg temp_hpc3_v_4_order9;
    wire v21;
    wire a_share_neg_hpc3_w_4_order9;
    wire temp_hpc3_w_4_order9;
    reg w21;
    wire u21;
    wire u22;
    reg temp_hpc3_v_4_order10;
    wire v23;
    wire a_share_neg_hpc3_w_4_order10;
    wire temp_hpc3_w_4_order10;
    reg w23;
    wire u23;
    reg temp_hpc3_v_4_order11;
    wire v24;
    wire a_share_neg_hpc3_w_4_order11;
    wire temp_hpc3_w_4_order11;
    reg w24;
    wire u24;
    reg temp_hpc3_v_4_order12;
    wire v30;
    wire a_share_neg_hpc3_w_4_order12;
    wire temp_hpc3_w_4_order12;
    reg w30;
    wire u30;
    reg temp_hpc3_v_4_order13;
    wire v31;
    wire a_share_neg_hpc3_w_4_order13;
    wire temp_hpc3_w_4_order13;
    reg w31;
    wire u31;
    reg temp_hpc3_v_4_order14;
    wire v32;
    wire a_share_neg_hpc3_w_4_order14;
    wire temp_hpc3_w_4_order14;
    reg w32;
    wire u32;
    wire u33;
    reg temp_hpc3_v_4_order15;
    wire v34;
    wire a_share_neg_hpc3_w_4_order15;
    wire temp_hpc3_w_4_order15;
    reg w34;
    wire u34;
    reg temp_hpc3_v_4_order16;
    wire v40;
    wire a_share_neg_hpc3_w_4_order16;
    wire temp_hpc3_w_4_order16;
    reg w40;
    wire u40;
    reg temp_hpc3_v_4_order17;
    wire v41;
    wire a_share_neg_hpc3_w_4_order17;
    wire temp_hpc3_w_4_order17;
    reg w41;
    wire u41;
    reg temp_hpc3_v_4_order18;
    wire v42;
    wire a_share_neg_hpc3_w_4_order18;
    wire temp_hpc3_w_4_order18;
    reg w42;
    wire u42;
    reg temp_hpc3_v_4_order19;
    wire v43;
    wire a_share_neg_hpc3_w_4_order19;
    wire temp_hpc3_w_4_order19;
    reg w43;
    wire u43;
    wire u44;
    reg u00_reg;
    wire t1;
    wire t2;
    wire t3;
    reg u11_reg;
    wire t4;
    wire t5;
    wire t6;
    wire t7;
    reg u22_reg;
    wire t8;
    wire t9;
    wire t10;
    wire t11;
    reg u33_reg;
    wire t12;
    wire t13;
    wire t14;
    wire t15;
    reg u44_reg;

    assign u00 = (a0 & b0);
    assign v01 = (temp_hpc3_v_4_order0 & a0);
    assign a_share_neg_hpc3_w_4_order0 = !a0;
    assign temp_hpc3_w_4_order0 = (a_share_neg_hpc3_w_4_order0 & r01);
    assign u01 = (v01 ^ w01);
    assign v02 = (temp_hpc3_v_4_order1 & a0);
    assign a_share_neg_hpc3_w_4_order1 = !a0;
    assign temp_hpc3_w_4_order1 = (a_share_neg_hpc3_w_4_order1 & r02);
    assign u02 = (v02 ^ w02);
    assign v03 = (temp_hpc3_v_4_order2 & a0);
    assign a_share_neg_hpc3_w_4_order2 = !a0;
    assign temp_hpc3_w_4_order2 = (a_share_neg_hpc3_w_4_order2 & r03);
    assign u03 = (v03 ^ w03);
    assign v04 = (temp_hpc3_v_4_order3 & a0);
    assign a_share_neg_hpc3_w_4_order3 = !a0;
    assign temp_hpc3_w_4_order3 = (a_share_neg_hpc3_w_4_order3 & r04);
    assign u04 = (v04 ^ w04);
    assign v10 = (temp_hpc3_v_4_order4 & a1);
    assign a_share_neg_hpc3_w_4_order4 = !a1;
    assign temp_hpc3_w_4_order4 = (a_share_neg_hpc3_w_4_order4 & r01);
    assign u10 = (v10 ^ w10);
    assign u11 = (a1 & b1);
    assign v12 = (temp_hpc3_v_4_order5 & a1);
    assign a_share_neg_hpc3_w_4_order5 = !a1;
    assign temp_hpc3_w_4_order5 = (a_share_neg_hpc3_w_4_order5 & r12);
    assign u12 = (v12 ^ w12);
    assign v13 = (temp_hpc3_v_4_order6 & a1);
    assign a_share_neg_hpc3_w_4_order6 = !a1;
    assign temp_hpc3_w_4_order6 = (a_share_neg_hpc3_w_4_order6 & r13);
    assign u13 = (v13 ^ w13);
    assign v14 = (temp_hpc3_v_4_order7 & a1);
    assign a_share_neg_hpc3_w_4_order7 = !a1;
    assign temp_hpc3_w_4_order7 = (a_share_neg_hpc3_w_4_order7 & r14);
    assign u14 = (v14 ^ w14);
    assign v20 = (temp_hpc3_v_4_order8 & a2);
    assign a_share_neg_hpc3_w_4_order8 = !a2;
    assign temp_hpc3_w_4_order8 = (a_share_neg_hpc3_w_4_order8 & r02);
    assign u20 = (v20 ^ w20);
    assign v21 = (temp_hpc3_v_4_order9 & a2);
    assign a_share_neg_hpc3_w_4_order9 = !a2;
    assign temp_hpc3_w_4_order9 = (a_share_neg_hpc3_w_4_order9 & r12);
    assign u21 = (v21 ^ w21);
    assign u22 = (a2 & b2);
    assign v23 = (temp_hpc3_v_4_order10 & a2);
    assign a_share_neg_hpc3_w_4_order10 = !a2;
    assign temp_hpc3_w_4_order10 = (a_share_neg_hpc3_w_4_order10 & r23);
    assign u23 = (v23 ^ w23);
    assign v24 = (temp_hpc3_v_4_order11 & a2);
    assign a_share_neg_hpc3_w_4_order11 = !a2;
    assign temp_hpc3_w_4_order11 = (a_share_neg_hpc3_w_4_order11 & r24);
    assign u24 = (v24 ^ w24);
    assign v30 = (temp_hpc3_v_4_order12 & a3);
    assign a_share_neg_hpc3_w_4_order12 = !a3;
    assign temp_hpc3_w_4_order12 = (a_share_neg_hpc3_w_4_order12 & r03);
    assign u30 = (v30 ^ w30);
    assign v31 = (temp_hpc3_v_4_order13 & a3);
    assign a_share_neg_hpc3_w_4_order13 = !a3;
    assign temp_hpc3_w_4_order13 = (a_share_neg_hpc3_w_4_order13 & r13);
    assign u31 = (v31 ^ w31);
    assign v32 = (temp_hpc3_v_4_order14 & a3);
    assign a_share_neg_hpc3_w_4_order14 = !a3;
    assign temp_hpc3_w_4_order14 = (a_share_neg_hpc3_w_4_order14 & r23);
    assign u32 = (v32 ^ w32);
    assign u33 = (a3 & b3);
    assign v34 = (temp_hpc3_v_4_order15 & a3);
    assign a_share_neg_hpc3_w_4_order15 = !a3;
    assign temp_hpc3_w_4_order15 = (a_share_neg_hpc3_w_4_order15 & r34);
    assign u34 = (v34 ^ w34);
    assign v40 = (temp_hpc3_v_4_order16 & a4);
    assign a_share_neg_hpc3_w_4_order16 = !a4;
    assign temp_hpc3_w_4_order16 = (a_share_neg_hpc3_w_4_order16 & r04);
    assign u40 = (v40 ^ w40);
    assign v41 = (temp_hpc3_v_4_order17 & a4);
    assign a_share_neg_hpc3_w_4_order17 = !a4;
    assign temp_hpc3_w_4_order17 = (a_share_neg_hpc3_w_4_order17 & r14);
    assign u41 = (v41 ^ w41);
    assign v42 = (temp_hpc3_v_4_order18 & a4);
    assign a_share_neg_hpc3_w_4_order18 = !a4;
    assign temp_hpc3_w_4_order18 = (a_share_neg_hpc3_w_4_order18 & r24);
    assign u42 = (v42 ^ w42);
    assign v43 = (temp_hpc3_v_4_order19 & a4);
    assign a_share_neg_hpc3_w_4_order19 = !a4;
    assign temp_hpc3_w_4_order19 = (a_share_neg_hpc3_w_4_order19 & r34);
    assign u43 = (v43 ^ w43);
    assign u44 = (a4 & b4);
    assign t1 = (u00_reg ^ u01);
    assign t2 = (t1 ^ u02);
    assign t3 = (t2 ^ u03);
    assign t4 = (u10 ^ u11_reg);
    assign t5 = (t4 ^ u12);
    assign t6 = (t5 ^ u13);
    assign t7 = (u20 ^ u21);
    assign t8 = (t7 ^ u22_reg);
    assign t9 = (t8 ^ u23);
    assign t10 = (u30 ^ u31);
    assign t11 = (t10 ^ u32);
    assign t12 = (t11 ^ u33_reg);
    assign t13 = (u40 ^ u41);
    assign t14 = (t13 ^ u42);
    assign t15 = (t14 ^ u43);

    always @(posedge clk) begin
        temp_hpc3_v_4_order0 <= (b1 ^ r01);
        w01 <= (temp_hpc3_w_4_order0 ^ p01);
        temp_hpc3_v_4_order1 <= (b2 ^ r02);
        w02 <= (temp_hpc3_w_4_order1 ^ p02);
        temp_hpc3_v_4_order2 <= (b3 ^ r03);
        w03 <= (temp_hpc3_w_4_order2 ^ p03);
        temp_hpc3_v_4_order3 <= (b4 ^ r04);
        w04 <= (temp_hpc3_w_4_order3 ^ p04);
        temp_hpc3_v_4_order4 <= (b0 ^ r01);
        w10 <= (temp_hpc3_w_4_order4 ^ p01);
        temp_hpc3_v_4_order5 <= (b2 ^ r12);
        w12 <= (temp_hpc3_w_4_order5 ^ p12);
        temp_hpc3_v_4_order6 <= (b3 ^ r13);
        w13 <= (temp_hpc3_w_4_order6 ^ p13);
        temp_hpc3_v_4_order7 <= (b4 ^ r14);
        w14 <= (temp_hpc3_w_4_order7 ^ p14);
        temp_hpc3_v_4_order8 <= (b0 ^ r02);
        w20 <= (temp_hpc3_w_4_order8 ^ p02);
        temp_hpc3_v_4_order9 <= (b1 ^ r12);
        w21 <= (temp_hpc3_w_4_order9 ^ p12);
        temp_hpc3_v_4_order10 <= (b3 ^ r23);
        w23 <= (temp_hpc3_w_4_order10 ^ p23);
        temp_hpc3_v_4_order11 <= (b4 ^ r24);
        w24 <= (temp_hpc3_w_4_order11 ^ p24);
        temp_hpc3_v_4_order12 <= (b0 ^ r03);
        w30 <= (temp_hpc3_w_4_order12 ^ p03);
        temp_hpc3_v_4_order13 <= (b1 ^ r13);
        w31 <= (temp_hpc3_w_4_order13 ^ p13);
        temp_hpc3_v_4_order14 <= (b2 ^ r23);
        w32 <= (temp_hpc3_w_4_order14 ^ p23);
        temp_hpc3_v_4_order15 <= (b4 ^ r34);
        w34 <= (temp_hpc3_w_4_order15 ^ p34);
        temp_hpc3_v_4_order16 <= (b0 ^ r04);
        w40 <= (temp_hpc3_w_4_order16 ^ p04);
        temp_hpc3_v_4_order17 <= (b1 ^ r14);
        w41 <= (temp_hpc3_w_4_order17 ^ p14);
        temp_hpc3_v_4_order18 <= (b2 ^ r24);
        w42 <= (temp_hpc3_w_4_order18 ^ p24);
        temp_hpc3_v_4_order19 <= (b3 ^ r34);
        w43 <= (temp_hpc3_w_4_order19 ^ p34);
        u00_reg <= u00;
        c0 <= (t3 ^ u04);
        u11_reg <= u11;
        c1 <= (t6 ^ u14);
        u22_reg <= u22;
        c2 <= (t9 ^ u24);
        u33_reg <= u33;
        c3 <= (t12 ^ u34);
        u44_reg <= u44;
        c4 <= (t15 ^ u44_reg);
    end

endmodule

