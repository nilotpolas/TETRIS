module HPC3o(
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
    w0,
    w1,
    w2,
    w3,
    w4,
    rand_01,
    rand_02,
    rand_03,
    rand_04,
    rand_12,
    rand_13,
    rand_14,
    rand_23,
    rand_24,
    rand_34,
    rand_prime_01,
    rand_prime_02,
    rand_prime_03,
    rand_prime_04,
    rand_prime_12,
    rand_prime_13,
    rand_prime_14,
    rand_prime_23,
    rand_prime_24,
    rand_prime_34,
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
    input  w0;
    input  w1;
    input  w2;
    input  w3;
    input  w4;
    input  rand_01;
    input  rand_02;
    input  rand_03;
    input  rand_04;
    input  rand_12;
    input  rand_13;
    input  rand_14;
    input  rand_23;
    input  rand_24;
    input  rand_34;
    input  rand_prime_01;
    input  rand_prime_02;
    input  rand_prime_03;
    input  rand_prime_04;
    input  rand_prime_12;
    input  rand_prime_13;
    input  rand_prime_14;
    input  rand_prime_23;
    input  rand_prime_24;
    input  rand_prime_34;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
    output reg  c4;
//Intermediate values
    wire xor_br_hpc3o_first_half_4_order0;
    wire and_ar_hpc3o_first_half_4_order0;
    wire xor_step1_hpc3o_first_half_4_order0;
    wire xor_step2_hpc3o_first_half_4_order0;
    reg w01;
    wire xor_br_hpc3o_v_4_order0;
    reg temp_hpc3o_v_4_order0;
    wire and_ta_hpc3o_v_4_order0;
    wire v01;
    wire u01;
    wire and_ar_hpc3o_w_4_order0;
    wire xor_step1_hpc3o_w_4_order0;
    reg w02;
    wire xor_br_hpc3o_v_4_order1;
    reg temp_hpc3o_v_4_order1;
    wire and_ta_hpc3o_v_4_order1;
    wire v02;
    wire u02;
    wire and_ar_hpc3o_w_4_order1;
    wire xor_step1_hpc3o_w_4_order1;
    reg w03;
    wire xor_br_hpc3o_v_4_order2;
    reg temp_hpc3o_v_4_order2;
    wire and_ta_hpc3o_v_4_order2;
    wire v03;
    wire u03;
    wire and_ar_hpc3o_w_4_order2;
    wire xor_step1_hpc3o_w_4_order2;
    reg w04;
    wire xor_br_hpc3o_v_4_order3;
    reg temp_hpc3o_v_4_order3;
    wire and_ta_hpc3o_v_4_order3;
    wire v04;
    wire u04;
    wire xor_br_hpc3o_first_half_4_order1;
    wire and_ar_hpc3o_first_half_4_order1;
    wire xor_step1_hpc3o_first_half_4_order1;
    wire xor_step2_hpc3o_first_half_4_order1;
    reg w10;
    wire xor_br_hpc3o_v_4_order4;
    reg temp_hpc3o_v_4_order4;
    wire and_ta_hpc3o_v_4_order4;
    wire v10;
    wire u10;
    wire and_ar_hpc3o_w_4_order3;
    wire xor_step1_hpc3o_w_4_order3;
    reg w12;
    wire xor_br_hpc3o_v_4_order5;
    reg temp_hpc3o_v_4_order5;
    wire and_ta_hpc3o_v_4_order5;
    wire v12;
    wire u12;
    wire and_ar_hpc3o_w_4_order4;
    wire xor_step1_hpc3o_w_4_order4;
    reg w13;
    wire xor_br_hpc3o_v_4_order6;
    reg temp_hpc3o_v_4_order6;
    wire and_ta_hpc3o_v_4_order6;
    wire v13;
    wire u13;
    wire and_ar_hpc3o_w_4_order5;
    wire xor_step1_hpc3o_w_4_order5;
    reg w14;
    wire xor_br_hpc3o_v_4_order7;
    reg temp_hpc3o_v_4_order7;
    wire and_ta_hpc3o_v_4_order7;
    wire v14;
    wire u14;
    wire xor_br_hpc3o_first_half_4_order2;
    wire and_ar_hpc3o_first_half_4_order2;
    wire xor_step1_hpc3o_first_half_4_order2;
    wire xor_step2_hpc3o_first_half_4_order2;
    reg w20;
    wire xor_br_hpc3o_v_4_order8;
    reg temp_hpc3o_v_4_order8;
    wire and_ta_hpc3o_v_4_order8;
    wire v20;
    wire u20;
    wire and_ar_hpc3o_w_4_order6;
    wire xor_step1_hpc3o_w_4_order6;
    reg w21;
    wire xor_br_hpc3o_v_4_order9;
    reg temp_hpc3o_v_4_order9;
    wire and_ta_hpc3o_v_4_order9;
    wire v21;
    wire u21;
    wire and_ar_hpc3o_w_4_order7;
    wire xor_step1_hpc3o_w_4_order7;
    reg w23;
    wire xor_br_hpc3o_v_4_order10;
    reg temp_hpc3o_v_4_order10;
    wire and_ta_hpc3o_v_4_order10;
    wire v23;
    wire u23;
    wire and_ar_hpc3o_w_4_order8;
    wire xor_step1_hpc3o_w_4_order8;
    reg w24;
    wire xor_br_hpc3o_v_4_order11;
    reg temp_hpc3o_v_4_order11;
    wire and_ta_hpc3o_v_4_order11;
    wire v24;
    wire u24;
    wire xor_br_hpc3o_first_half_4_order3;
    wire and_ar_hpc3o_first_half_4_order3;
    wire xor_step1_hpc3o_first_half_4_order3;
    wire xor_step2_hpc3o_first_half_4_order3;
    reg w30;
    wire xor_br_hpc3o_v_4_order12;
    reg temp_hpc3o_v_4_order12;
    wire and_ta_hpc3o_v_4_order12;
    wire v30;
    wire u30;
    wire and_ar_hpc3o_w_4_order9;
    wire xor_step1_hpc3o_w_4_order9;
    reg w31;
    wire xor_br_hpc3o_v_4_order13;
    reg temp_hpc3o_v_4_order13;
    wire and_ta_hpc3o_v_4_order13;
    wire v31;
    wire u31;
    wire and_ar_hpc3o_w_4_order10;
    wire xor_step1_hpc3o_w_4_order10;
    reg w32;
    wire xor_br_hpc3o_v_4_order14;
    reg temp_hpc3o_v_4_order14;
    wire and_ta_hpc3o_v_4_order14;
    wire v32;
    wire u32;
    wire and_ar_hpc3o_w_4_order11;
    wire xor_step1_hpc3o_w_4_order11;
    reg w34;
    wire xor_br_hpc3o_v_4_order15;
    reg temp_hpc3o_v_4_order15;
    wire and_ta_hpc3o_v_4_order15;
    wire v34;
    wire u34;
    wire xor_br_hpc3o_first_half_4_order4;
    wire and_ar_hpc3o_first_half_4_order4;
    wire xor_step1_hpc3o_first_half_4_order4;
    wire xor_step2_hpc3o_first_half_4_order4;
    reg w40;
    wire xor_br_hpc3o_v_4_order16;
    reg temp_hpc3o_v_4_order16;
    wire and_ta_hpc3o_v_4_order16;
    wire v40;
    wire u40;
    wire and_ar_hpc3o_w_4_order12;
    wire xor_step1_hpc3o_w_4_order12;
    reg w41;
    wire xor_br_hpc3o_v_4_order17;
    reg temp_hpc3o_v_4_order17;
    wire and_ta_hpc3o_v_4_order17;
    wire v41;
    wire u41;
    wire and_ar_hpc3o_w_4_order13;
    wire xor_step1_hpc3o_w_4_order13;
    reg w42;
    wire xor_br_hpc3o_v_4_order18;
    reg temp_hpc3o_v_4_order18;
    wire and_ta_hpc3o_v_4_order18;
    wire v42;
    wire u42;
    wire and_ar_hpc3o_w_4_order14;
    wire xor_step1_hpc3o_w_4_order14;
    reg w43;
    wire xor_br_hpc3o_v_4_order19;
    reg temp_hpc3o_v_4_order19;
    wire and_ta_hpc3o_v_4_order19;
    wire v43;
    wire u43;
    wire t1;
    wire t2;
    wire t3;
    wire t4;
    wire t5;
    wire t6;
    wire t7;
    wire t8;
    wire t9;
    wire t10;

    assign xor_br_hpc3o_first_half_4_order0 = (b0 ^ rand_01);
    assign and_ar_hpc3o_first_half_4_order0 = (a0 & xor_br_hpc3o_first_half_4_order0);
    assign xor_step1_hpc3o_first_half_4_order0 = (w0 ^ and_ar_hpc3o_first_half_4_order0);
    assign xor_step2_hpc3o_first_half_4_order0 = (xor_step1_hpc3o_first_half_4_order0 ^ rand_prime_01);
    assign xor_br_hpc3o_v_4_order0 = (b1 ^ rand_01);
    assign and_ta_hpc3o_v_4_order0 = (a0 & temp_hpc3o_v_4_order0);
    assign v01 = and_ta_hpc3o_v_4_order0;
    assign u01 = (v01 ^ w01);
    assign and_ar_hpc3o_w_4_order0 = (a0 & rand_02);
    assign xor_step1_hpc3o_w_4_order0 = (and_ar_hpc3o_w_4_order0 ^ rand_prime_02);
    assign xor_br_hpc3o_v_4_order1 = (b2 ^ rand_02);
    assign and_ta_hpc3o_v_4_order1 = (a0 & temp_hpc3o_v_4_order1);
    assign v02 = and_ta_hpc3o_v_4_order1;
    assign u02 = (v02 ^ w02);
    assign and_ar_hpc3o_w_4_order1 = (a0 & rand_03);
    assign xor_step1_hpc3o_w_4_order1 = (and_ar_hpc3o_w_4_order1 ^ rand_prime_03);
    assign xor_br_hpc3o_v_4_order2 = (b3 ^ rand_03);
    assign and_ta_hpc3o_v_4_order2 = (a0 & temp_hpc3o_v_4_order2);
    assign v03 = and_ta_hpc3o_v_4_order2;
    assign u03 = (v03 ^ w03);
    assign and_ar_hpc3o_w_4_order2 = (a0 & rand_04);
    assign xor_step1_hpc3o_w_4_order2 = (and_ar_hpc3o_w_4_order2 ^ rand_prime_04);
    assign xor_br_hpc3o_v_4_order3 = (b4 ^ rand_04);
    assign and_ta_hpc3o_v_4_order3 = (a0 & temp_hpc3o_v_4_order3);
    assign v04 = and_ta_hpc3o_v_4_order3;
    assign u04 = (v04 ^ w04);
    assign xor_br_hpc3o_first_half_4_order1 = (b1 ^ rand_01);
    assign and_ar_hpc3o_first_half_4_order1 = (a1 & xor_br_hpc3o_first_half_4_order1);
    assign xor_step1_hpc3o_first_half_4_order1 = (w1 ^ and_ar_hpc3o_first_half_4_order1);
    assign xor_step2_hpc3o_first_half_4_order1 = (xor_step1_hpc3o_first_half_4_order1 ^ rand_prime_01);
    assign xor_br_hpc3o_v_4_order4 = (b0 ^ rand_01);
    assign and_ta_hpc3o_v_4_order4 = (a1 & temp_hpc3o_v_4_order4);
    assign v10 = and_ta_hpc3o_v_4_order4;
    assign u10 = (v10 ^ w10);
    assign and_ar_hpc3o_w_4_order3 = (a1 & rand_12);
    assign xor_step1_hpc3o_w_4_order3 = (and_ar_hpc3o_w_4_order3 ^ rand_prime_12);
    assign xor_br_hpc3o_v_4_order5 = (b2 ^ rand_12);
    assign and_ta_hpc3o_v_4_order5 = (a1 & temp_hpc3o_v_4_order5);
    assign v12 = and_ta_hpc3o_v_4_order5;
    assign u12 = (v12 ^ w12);
    assign and_ar_hpc3o_w_4_order4 = (a1 & rand_13);
    assign xor_step1_hpc3o_w_4_order4 = (and_ar_hpc3o_w_4_order4 ^ rand_prime_13);
    assign xor_br_hpc3o_v_4_order6 = (b3 ^ rand_13);
    assign and_ta_hpc3o_v_4_order6 = (a1 & temp_hpc3o_v_4_order6);
    assign v13 = and_ta_hpc3o_v_4_order6;
    assign u13 = (v13 ^ w13);
    assign and_ar_hpc3o_w_4_order5 = (a1 & rand_14);
    assign xor_step1_hpc3o_w_4_order5 = (and_ar_hpc3o_w_4_order5 ^ rand_prime_14);
    assign xor_br_hpc3o_v_4_order7 = (b4 ^ rand_14);
    assign and_ta_hpc3o_v_4_order7 = (a1 & temp_hpc3o_v_4_order7);
    assign v14 = and_ta_hpc3o_v_4_order7;
    assign u14 = (v14 ^ w14);
    assign xor_br_hpc3o_first_half_4_order2 = (b2 ^ rand_02);
    assign and_ar_hpc3o_first_half_4_order2 = (a2 & xor_br_hpc3o_first_half_4_order2);
    assign xor_step1_hpc3o_first_half_4_order2 = (w2 ^ and_ar_hpc3o_first_half_4_order2);
    assign xor_step2_hpc3o_first_half_4_order2 = (xor_step1_hpc3o_first_half_4_order2 ^ rand_prime_02);
    assign xor_br_hpc3o_v_4_order8 = (b0 ^ rand_02);
    assign and_ta_hpc3o_v_4_order8 = (a2 & temp_hpc3o_v_4_order8);
    assign v20 = and_ta_hpc3o_v_4_order8;
    assign u20 = (v20 ^ w20);
    assign and_ar_hpc3o_w_4_order6 = (a2 & rand_12);
    assign xor_step1_hpc3o_w_4_order6 = (and_ar_hpc3o_w_4_order6 ^ rand_prime_12);
    assign xor_br_hpc3o_v_4_order9 = (b1 ^ rand_12);
    assign and_ta_hpc3o_v_4_order9 = (a2 & temp_hpc3o_v_4_order9);
    assign v21 = and_ta_hpc3o_v_4_order9;
    assign u21 = (v21 ^ w21);
    assign and_ar_hpc3o_w_4_order7 = (a2 & rand_23);
    assign xor_step1_hpc3o_w_4_order7 = (and_ar_hpc3o_w_4_order7 ^ rand_prime_23);
    assign xor_br_hpc3o_v_4_order10 = (b3 ^ rand_23);
    assign and_ta_hpc3o_v_4_order10 = (a2 & temp_hpc3o_v_4_order10);
    assign v23 = and_ta_hpc3o_v_4_order10;
    assign u23 = (v23 ^ w23);
    assign and_ar_hpc3o_w_4_order8 = (a2 & rand_24);
    assign xor_step1_hpc3o_w_4_order8 = (and_ar_hpc3o_w_4_order8 ^ rand_prime_24);
    assign xor_br_hpc3o_v_4_order11 = (b4 ^ rand_24);
    assign and_ta_hpc3o_v_4_order11 = (a2 & temp_hpc3o_v_4_order11);
    assign v24 = and_ta_hpc3o_v_4_order11;
    assign u24 = (v24 ^ w24);
    assign xor_br_hpc3o_first_half_4_order3 = (b3 ^ rand_03);
    assign and_ar_hpc3o_first_half_4_order3 = (a3 & xor_br_hpc3o_first_half_4_order3);
    assign xor_step1_hpc3o_first_half_4_order3 = (w3 ^ and_ar_hpc3o_first_half_4_order3);
    assign xor_step2_hpc3o_first_half_4_order3 = (xor_step1_hpc3o_first_half_4_order3 ^ rand_prime_03);
    assign xor_br_hpc3o_v_4_order12 = (b0 ^ rand_03);
    assign and_ta_hpc3o_v_4_order12 = (a3 & temp_hpc3o_v_4_order12);
    assign v30 = and_ta_hpc3o_v_4_order12;
    assign u30 = (v30 ^ w30);
    assign and_ar_hpc3o_w_4_order9 = (a3 & rand_13);
    assign xor_step1_hpc3o_w_4_order9 = (and_ar_hpc3o_w_4_order9 ^ rand_prime_13);
    assign xor_br_hpc3o_v_4_order13 = (b1 ^ rand_13);
    assign and_ta_hpc3o_v_4_order13 = (a3 & temp_hpc3o_v_4_order13);
    assign v31 = and_ta_hpc3o_v_4_order13;
    assign u31 = (v31 ^ w31);
    assign and_ar_hpc3o_w_4_order10 = (a3 & rand_23);
    assign xor_step1_hpc3o_w_4_order10 = (and_ar_hpc3o_w_4_order10 ^ rand_prime_23);
    assign xor_br_hpc3o_v_4_order14 = (b2 ^ rand_23);
    assign and_ta_hpc3o_v_4_order14 = (a3 & temp_hpc3o_v_4_order14);
    assign v32 = and_ta_hpc3o_v_4_order14;
    assign u32 = (v32 ^ w32);
    assign and_ar_hpc3o_w_4_order11 = (a3 & rand_34);
    assign xor_step1_hpc3o_w_4_order11 = (and_ar_hpc3o_w_4_order11 ^ rand_prime_34);
    assign xor_br_hpc3o_v_4_order15 = (b4 ^ rand_34);
    assign and_ta_hpc3o_v_4_order15 = (a3 & temp_hpc3o_v_4_order15);
    assign v34 = and_ta_hpc3o_v_4_order15;
    assign u34 = (v34 ^ w34);
    assign xor_br_hpc3o_first_half_4_order4 = (b4 ^ rand_04);
    assign and_ar_hpc3o_first_half_4_order4 = (a4 & xor_br_hpc3o_first_half_4_order4);
    assign xor_step1_hpc3o_first_half_4_order4 = (w4 ^ and_ar_hpc3o_first_half_4_order4);
    assign xor_step2_hpc3o_first_half_4_order4 = (xor_step1_hpc3o_first_half_4_order4 ^ rand_prime_04);
    assign xor_br_hpc3o_v_4_order16 = (b0 ^ rand_04);
    assign and_ta_hpc3o_v_4_order16 = (a4 & temp_hpc3o_v_4_order16);
    assign v40 = and_ta_hpc3o_v_4_order16;
    assign u40 = (v40 ^ w40);
    assign and_ar_hpc3o_w_4_order12 = (a4 & rand_14);
    assign xor_step1_hpc3o_w_4_order12 = (and_ar_hpc3o_w_4_order12 ^ rand_prime_14);
    assign xor_br_hpc3o_v_4_order17 = (b1 ^ rand_14);
    assign and_ta_hpc3o_v_4_order17 = (a4 & temp_hpc3o_v_4_order17);
    assign v41 = and_ta_hpc3o_v_4_order17;
    assign u41 = (v41 ^ w41);
    assign and_ar_hpc3o_w_4_order13 = (a4 & rand_24);
    assign xor_step1_hpc3o_w_4_order13 = (and_ar_hpc3o_w_4_order13 ^ rand_prime_24);
    assign xor_br_hpc3o_v_4_order18 = (b2 ^ rand_24);
    assign and_ta_hpc3o_v_4_order18 = (a4 & temp_hpc3o_v_4_order18);
    assign v42 = and_ta_hpc3o_v_4_order18;
    assign u42 = (v42 ^ w42);
    assign and_ar_hpc3o_w_4_order14 = (a4 & rand_34);
    assign xor_step1_hpc3o_w_4_order14 = (and_ar_hpc3o_w_4_order14 ^ rand_prime_34);
    assign xor_br_hpc3o_v_4_order19 = (b3 ^ rand_34);
    assign and_ta_hpc3o_v_4_order19 = (a4 & temp_hpc3o_v_4_order19);
    assign v43 = and_ta_hpc3o_v_4_order19;
    assign u43 = (v43 ^ w43);
    assign t1 = (u01 ^ u02);
    assign t2 = (t1 ^ u03);
    assign t3 = (u10 ^ u12);
    assign t4 = (t3 ^ u13);
    assign t5 = (u20 ^ u21);
    assign t6 = (t5 ^ u23);
    assign t7 = (u30 ^ u31);
    assign t8 = (t7 ^ u32);
    assign t9 = (u40 ^ u41);
    assign t10 = (t9 ^ u42);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc3o_first_half_4_order0;
        temp_hpc3o_v_4_order0 <= xor_br_hpc3o_v_4_order0;
        w02 <= xor_step1_hpc3o_w_4_order0;
        temp_hpc3o_v_4_order1 <= xor_br_hpc3o_v_4_order1;
        w03 <= xor_step1_hpc3o_w_4_order1;
        temp_hpc3o_v_4_order2 <= xor_br_hpc3o_v_4_order2;
        w04 <= xor_step1_hpc3o_w_4_order2;
        temp_hpc3o_v_4_order3 <= xor_br_hpc3o_v_4_order3;
        w10 <= xor_step2_hpc3o_first_half_4_order1;
        temp_hpc3o_v_4_order4 <= xor_br_hpc3o_v_4_order4;
        w12 <= xor_step1_hpc3o_w_4_order3;
        temp_hpc3o_v_4_order5 <= xor_br_hpc3o_v_4_order5;
        w13 <= xor_step1_hpc3o_w_4_order4;
        temp_hpc3o_v_4_order6 <= xor_br_hpc3o_v_4_order6;
        w14 <= xor_step1_hpc3o_w_4_order5;
        temp_hpc3o_v_4_order7 <= xor_br_hpc3o_v_4_order7;
        w20 <= xor_step2_hpc3o_first_half_4_order2;
        temp_hpc3o_v_4_order8 <= xor_br_hpc3o_v_4_order8;
        w21 <= xor_step1_hpc3o_w_4_order6;
        temp_hpc3o_v_4_order9 <= xor_br_hpc3o_v_4_order9;
        w23 <= xor_step1_hpc3o_w_4_order7;
        temp_hpc3o_v_4_order10 <= xor_br_hpc3o_v_4_order10;
        w24 <= xor_step1_hpc3o_w_4_order8;
        temp_hpc3o_v_4_order11 <= xor_br_hpc3o_v_4_order11;
        w30 <= xor_step2_hpc3o_first_half_4_order3;
        temp_hpc3o_v_4_order12 <= xor_br_hpc3o_v_4_order12;
        w31 <= xor_step1_hpc3o_w_4_order9;
        temp_hpc3o_v_4_order13 <= xor_br_hpc3o_v_4_order13;
        w32 <= xor_step1_hpc3o_w_4_order10;
        temp_hpc3o_v_4_order14 <= xor_br_hpc3o_v_4_order14;
        w34 <= xor_step1_hpc3o_w_4_order11;
        temp_hpc3o_v_4_order15 <= xor_br_hpc3o_v_4_order15;
        w40 <= xor_step2_hpc3o_first_half_4_order4;
        temp_hpc3o_v_4_order16 <= xor_br_hpc3o_v_4_order16;
        w41 <= xor_step1_hpc3o_w_4_order12;
        temp_hpc3o_v_4_order17 <= xor_br_hpc3o_v_4_order17;
        w42 <= xor_step1_hpc3o_w_4_order13;
        temp_hpc3o_v_4_order18 <= xor_br_hpc3o_v_4_order18;
        w43 <= xor_step1_hpc3o_w_4_order14;
        temp_hpc3o_v_4_order19 <= xor_br_hpc3o_v_4_order19;
        c0 <= (t2 ^ u04);
        c1 <= (t4 ^ u14);
        c2 <= (t6 ^ u24);
        c3 <= (t8 ^ u34);
        c4 <= (t10 ^ u43);
    end

endmodule

