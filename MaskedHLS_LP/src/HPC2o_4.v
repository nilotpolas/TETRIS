module HPC2o(
    clk,
    a0,
    a1,
    a2,
    a3,
    b0,
    b1,
    b2,
    b3,
    w0,
    w1,
    w2,
    w3,
    rand_01,
    rand_02,
    rand_03,
    rand_12,
    rand_13,
    rand_23,
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
    input  w0;
    input  w1;
    input  w2;
    input  w3;
    input  rand_01;
    input  rand_02;
    input  rand_03;
    input  rand_12;
    input  rand_13;
    input  rand_23;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
//Intermediate values
    wire temp_ab_hpc2o_first_half_3_order0;
    wire a_neg_hpc2o_first_half_3_order0;
    wire temp_ar_hpc2o_first_half_3_order0;
    wire xor_step1_hpc2o_first_half_3_order0;
    wire xor_step2_hpc2o_first_half_3_order0;
    reg w01;
    wire xor_br_hpc2o_v_3_order0;
    reg temp_hpc2o_v_3_order0;
    wire and_ta_hpc2o_v_3_order0;
    reg v01;
    reg w01_reg;
    wire u01;
    wire a_neg_hpc2o_w_3_order0;
    wire and_ar_hpc2o_w_3_order0;
    reg w02;
    wire xor_br_hpc2o_v_3_order1;
    reg temp_hpc2o_v_3_order1;
    wire and_ta_hpc2o_v_3_order1;
    reg v02;
    reg w02_reg;
    wire u02;
    wire a_neg_hpc2o_w_3_order1;
    wire and_ar_hpc2o_w_3_order1;
    reg w03;
    wire xor_br_hpc2o_v_3_order2;
    reg temp_hpc2o_v_3_order2;
    wire and_ta_hpc2o_v_3_order2;
    reg v03;
    reg w03_reg;
    wire u03;
    wire temp_ab_hpc2o_first_half_3_order1;
    wire a_neg_hpc2o_first_half_3_order1;
    wire temp_ar_hpc2o_first_half_3_order1;
    wire xor_step1_hpc2o_first_half_3_order1;
    wire xor_step2_hpc2o_first_half_3_order1;
    reg w10;
    wire xor_br_hpc2o_v_3_order3;
    reg temp_hpc2o_v_3_order3;
    wire and_ta_hpc2o_v_3_order3;
    reg v10;
    reg w10_reg;
    wire u10;
    wire a_neg_hpc2o_w_3_order2;
    wire and_ar_hpc2o_w_3_order2;
    reg w12;
    wire xor_br_hpc2o_v_3_order4;
    reg temp_hpc2o_v_3_order4;
    wire and_ta_hpc2o_v_3_order4;
    reg v12;
    reg w12_reg;
    wire u12;
    wire a_neg_hpc2o_w_3_order3;
    wire and_ar_hpc2o_w_3_order3;
    reg w13;
    wire xor_br_hpc2o_v_3_order5;
    reg temp_hpc2o_v_3_order5;
    wire and_ta_hpc2o_v_3_order5;
    reg v13;
    reg w13_reg;
    wire u13;
    wire temp_ab_hpc2o_first_half_3_order2;
    wire a_neg_hpc2o_first_half_3_order2;
    wire temp_ar_hpc2o_first_half_3_order2;
    wire xor_step1_hpc2o_first_half_3_order2;
    wire xor_step2_hpc2o_first_half_3_order2;
    reg w20;
    wire xor_br_hpc2o_v_3_order6;
    reg temp_hpc2o_v_3_order6;
    wire and_ta_hpc2o_v_3_order6;
    reg v20;
    reg w20_reg;
    wire u20;
    wire a_neg_hpc2o_w_3_order4;
    wire and_ar_hpc2o_w_3_order4;
    reg w21;
    wire xor_br_hpc2o_v_3_order7;
    reg temp_hpc2o_v_3_order7;
    wire and_ta_hpc2o_v_3_order7;
    reg v21;
    reg w21_reg;
    wire u21;
    wire a_neg_hpc2o_w_3_order5;
    wire and_ar_hpc2o_w_3_order5;
    reg w23;
    wire xor_br_hpc2o_v_3_order8;
    reg temp_hpc2o_v_3_order8;
    wire and_ta_hpc2o_v_3_order8;
    reg v23;
    reg w23_reg;
    wire u23;
    wire temp_ab_hpc2o_first_half_3_order3;
    wire a_neg_hpc2o_first_half_3_order3;
    wire temp_ar_hpc2o_first_half_3_order3;
    wire xor_step1_hpc2o_first_half_3_order3;
    wire xor_step2_hpc2o_first_half_3_order3;
    reg w30;
    wire xor_br_hpc2o_v_3_order9;
    reg temp_hpc2o_v_3_order9;
    wire and_ta_hpc2o_v_3_order9;
    reg v30;
    reg w30_reg;
    wire u30;
    wire a_neg_hpc2o_w_3_order6;
    wire and_ar_hpc2o_w_3_order6;
    reg w31;
    wire xor_br_hpc2o_v_3_order10;
    reg temp_hpc2o_v_3_order10;
    wire and_ta_hpc2o_v_3_order10;
    reg v31;
    reg w31_reg;
    wire u31;
    wire a_neg_hpc2o_w_3_order7;
    wire and_ar_hpc2o_w_3_order7;
    reg w32;
    wire xor_br_hpc2o_v_3_order11;
    reg temp_hpc2o_v_3_order11;
    wire and_ta_hpc2o_v_3_order11;
    reg v32;
    reg w32_reg;
    wire u32;
    wire t1;
    wire t2;
    wire t3;
    wire t4;

    assign temp_ab_hpc2o_first_half_3_order0 = (a0 & b0);
    assign a_neg_hpc2o_first_half_3_order0 = !a0;
    assign temp_ar_hpc2o_first_half_3_order0 = (a_neg_hpc2o_first_half_3_order0 & rand_01);
    assign xor_step1_hpc2o_first_half_3_order0 = (w0 ^ temp_ab_hpc2o_first_half_3_order0);
    assign xor_step2_hpc2o_first_half_3_order0 = (xor_step1_hpc2o_first_half_3_order0 ^ temp_ar_hpc2o_first_half_3_order0);
    assign xor_br_hpc2o_v_3_order0 = (b1 ^ rand_01);
    assign and_ta_hpc2o_v_3_order0 = (temp_hpc2o_v_3_order0 & a0);
    assign u01 = (v01 ^ w01_reg);
    assign a_neg_hpc2o_w_3_order0 = !a0;
    assign and_ar_hpc2o_w_3_order0 = (a_neg_hpc2o_w_3_order0 & rand_02);
    assign xor_br_hpc2o_v_3_order1 = (b2 ^ rand_02);
    assign and_ta_hpc2o_v_3_order1 = (temp_hpc2o_v_3_order1 & a0);
    assign u02 = (v02 | w02_reg);
    assign a_neg_hpc2o_w_3_order1 = !a0;
    assign and_ar_hpc2o_w_3_order1 = (a_neg_hpc2o_w_3_order1 & rand_03);
    assign xor_br_hpc2o_v_3_order2 = (b3 ^ rand_03);
    assign and_ta_hpc2o_v_3_order2 = (temp_hpc2o_v_3_order2 & a0);
    assign u03 = (v03 | w03_reg);
    assign temp_ab_hpc2o_first_half_3_order1 = (a1 & b1);
    assign a_neg_hpc2o_first_half_3_order1 = !a1;
    assign temp_ar_hpc2o_first_half_3_order1 = (a_neg_hpc2o_first_half_3_order1 & rand_01);
    assign xor_step1_hpc2o_first_half_3_order1 = (w1 ^ temp_ab_hpc2o_first_half_3_order1);
    assign xor_step2_hpc2o_first_half_3_order1 = (xor_step1_hpc2o_first_half_3_order1 ^ temp_ar_hpc2o_first_half_3_order1);
    assign xor_br_hpc2o_v_3_order3 = (b0 ^ rand_01);
    assign and_ta_hpc2o_v_3_order3 = (temp_hpc2o_v_3_order3 & a1);
    assign u10 = (v10 ^ w10_reg);
    assign a_neg_hpc2o_w_3_order2 = !a1;
    assign and_ar_hpc2o_w_3_order2 = (a_neg_hpc2o_w_3_order2 & rand_12);
    assign xor_br_hpc2o_v_3_order4 = (b2 ^ rand_12);
    assign and_ta_hpc2o_v_3_order4 = (temp_hpc2o_v_3_order4 & a1);
    assign u12 = (v12 | w12_reg);
    assign a_neg_hpc2o_w_3_order3 = !a1;
    assign and_ar_hpc2o_w_3_order3 = (a_neg_hpc2o_w_3_order3 & rand_13);
    assign xor_br_hpc2o_v_3_order5 = (b3 ^ rand_13);
    assign and_ta_hpc2o_v_3_order5 = (temp_hpc2o_v_3_order5 & a1);
    assign u13 = (v13 | w13_reg);
    assign temp_ab_hpc2o_first_half_3_order2 = (a2 & b2);
    assign a_neg_hpc2o_first_half_3_order2 = !a2;
    assign temp_ar_hpc2o_first_half_3_order2 = (a_neg_hpc2o_first_half_3_order2 & rand_02);
    assign xor_step1_hpc2o_first_half_3_order2 = (w2 ^ temp_ab_hpc2o_first_half_3_order2);
    assign xor_step2_hpc2o_first_half_3_order2 = (xor_step1_hpc2o_first_half_3_order2 ^ temp_ar_hpc2o_first_half_3_order2);
    assign xor_br_hpc2o_v_3_order6 = (b0 ^ rand_02);
    assign and_ta_hpc2o_v_3_order6 = (temp_hpc2o_v_3_order6 & a2);
    assign u20 = (v20 ^ w20_reg);
    assign a_neg_hpc2o_w_3_order4 = !a2;
    assign and_ar_hpc2o_w_3_order4 = (a_neg_hpc2o_w_3_order4 & rand_12);
    assign xor_br_hpc2o_v_3_order7 = (b1 ^ rand_12);
    assign and_ta_hpc2o_v_3_order7 = (temp_hpc2o_v_3_order7 & a2);
    assign u21 = (v21 | w21_reg);
    assign a_neg_hpc2o_w_3_order5 = !a2;
    assign and_ar_hpc2o_w_3_order5 = (a_neg_hpc2o_w_3_order5 & rand_23);
    assign xor_br_hpc2o_v_3_order8 = (b3 ^ rand_23);
    assign and_ta_hpc2o_v_3_order8 = (temp_hpc2o_v_3_order8 & a2);
    assign u23 = (v23 | w23_reg);
    assign temp_ab_hpc2o_first_half_3_order3 = (a3 & b3);
    assign a_neg_hpc2o_first_half_3_order3 = !a3;
    assign temp_ar_hpc2o_first_half_3_order3 = (a_neg_hpc2o_first_half_3_order3 & rand_03);
    assign xor_step1_hpc2o_first_half_3_order3 = (w3 ^ temp_ab_hpc2o_first_half_3_order3);
    assign xor_step2_hpc2o_first_half_3_order3 = (xor_step1_hpc2o_first_half_3_order3 ^ temp_ar_hpc2o_first_half_3_order3);
    assign xor_br_hpc2o_v_3_order9 = (b0 ^ rand_03);
    assign and_ta_hpc2o_v_3_order9 = (temp_hpc2o_v_3_order9 & a3);
    assign u30 = (v30 ^ w30_reg);
    assign a_neg_hpc2o_w_3_order6 = !a3;
    assign and_ar_hpc2o_w_3_order6 = (a_neg_hpc2o_w_3_order6 & rand_13);
    assign xor_br_hpc2o_v_3_order10 = (b1 ^ rand_13);
    assign and_ta_hpc2o_v_3_order10 = (temp_hpc2o_v_3_order10 & a3);
    assign u31 = (v31 | w31_reg);
    assign a_neg_hpc2o_w_3_order7 = !a3;
    assign and_ar_hpc2o_w_3_order7 = (a_neg_hpc2o_w_3_order7 & rand_23);
    assign xor_br_hpc2o_v_3_order11 = (b2 ^ rand_23);
    assign and_ta_hpc2o_v_3_order11 = (temp_hpc2o_v_3_order11 & a3);
    assign u32 = (v32 | w32_reg);
    assign t1 = (u01 ^ u02);
    assign t2 = (u10 ^ u12);
    assign t3 = (u20 ^ u21);
    assign t4 = (u30 ^ u31);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc2o_first_half_3_order0;
        temp_hpc2o_v_3_order0 <= xor_br_hpc2o_v_3_order0;
        v01 <= and_ta_hpc2o_v_3_order0;
        w01_reg <= w01;
        w02 <= and_ar_hpc2o_w_3_order0;
        temp_hpc2o_v_3_order1 <= xor_br_hpc2o_v_3_order1;
        v02 <= and_ta_hpc2o_v_3_order1;
        w02_reg <= w02;
        w03 <= and_ar_hpc2o_w_3_order1;
        temp_hpc2o_v_3_order2 <= xor_br_hpc2o_v_3_order2;
        v03 <= and_ta_hpc2o_v_3_order2;
        w03_reg <= w03;
        w10 <= xor_step2_hpc2o_first_half_3_order1;
        temp_hpc2o_v_3_order3 <= xor_br_hpc2o_v_3_order3;
        v10 <= and_ta_hpc2o_v_3_order3;
        w10_reg <= w10;
        w12 <= and_ar_hpc2o_w_3_order2;
        temp_hpc2o_v_3_order4 <= xor_br_hpc2o_v_3_order4;
        v12 <= and_ta_hpc2o_v_3_order4;
        w12_reg <= w12;
        w13 <= and_ar_hpc2o_w_3_order3;
        temp_hpc2o_v_3_order5 <= xor_br_hpc2o_v_3_order5;
        v13 <= and_ta_hpc2o_v_3_order5;
        w13_reg <= w13;
        w20 <= xor_step2_hpc2o_first_half_3_order2;
        temp_hpc2o_v_3_order6 <= xor_br_hpc2o_v_3_order6;
        v20 <= and_ta_hpc2o_v_3_order6;
        w20_reg <= w20;
        w21 <= and_ar_hpc2o_w_3_order4;
        temp_hpc2o_v_3_order7 <= xor_br_hpc2o_v_3_order7;
        v21 <= and_ta_hpc2o_v_3_order7;
        w21_reg <= w21;
        w23 <= and_ar_hpc2o_w_3_order5;
        temp_hpc2o_v_3_order8 <= xor_br_hpc2o_v_3_order8;
        v23 <= and_ta_hpc2o_v_3_order8;
        w23_reg <= w23;
        w30 <= xor_step2_hpc2o_first_half_3_order3;
        temp_hpc2o_v_3_order9 <= xor_br_hpc2o_v_3_order9;
        v30 <= and_ta_hpc2o_v_3_order9;
        w30_reg <= w30;
        w31 <= and_ar_hpc2o_w_3_order6;
        temp_hpc2o_v_3_order10 <= xor_br_hpc2o_v_3_order10;
        v31 <= and_ta_hpc2o_v_3_order10;
        w31_reg <= w31;
        w32 <= and_ar_hpc2o_w_3_order7;
        temp_hpc2o_v_3_order11 <= xor_br_hpc2o_v_3_order11;
        v32 <= and_ta_hpc2o_v_3_order11;
        w32_reg <= w32;
        c0 <= (t1 ^ u03);
        c1 <= (t2 ^ u13);
        c2 <= (t3 ^ u23);
        c3 <= (t4 ^ u32);
    end

endmodule

