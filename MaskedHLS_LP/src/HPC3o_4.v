module HPC3o(
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
    rand_prime_01,
    rand_prime_02,
    rand_prime_03,
    rand_prime_12,
    rand_prime_13,
    rand_prime_23,
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
    input  rand_prime_01;
    input  rand_prime_02;
    input  rand_prime_03;
    input  rand_prime_12;
    input  rand_prime_13;
    input  rand_prime_23;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
//Intermediate values
    wire xor_br_hpc3o_first_half_3_order0;
    wire and_ar_hpc3o_first_half_3_order0;
    wire xor_step1_hpc3o_first_half_3_order0;
    wire xor_step2_hpc3o_first_half_3_order0;
    reg w01;
    wire xor_br_hpc3o_v_3_order0;
    reg temp_hpc3o_v_3_order0;
    wire and_ta_hpc3o_v_3_order0;
    wire v01;
    wire u01;
    wire and_ar_hpc3o_w_3_order0;
    wire xor_step1_hpc3o_w_3_order0;
    reg w02;
    wire xor_br_hpc3o_v_3_order1;
    reg temp_hpc3o_v_3_order1;
    wire and_ta_hpc3o_v_3_order1;
    wire v02;
    wire u02;
    wire and_ar_hpc3o_w_3_order1;
    wire xor_step1_hpc3o_w_3_order1;
    reg w03;
    wire xor_br_hpc3o_v_3_order2;
    reg temp_hpc3o_v_3_order2;
    wire and_ta_hpc3o_v_3_order2;
    wire v03;
    wire u03;
    wire xor_br_hpc3o_first_half_3_order1;
    wire and_ar_hpc3o_first_half_3_order1;
    wire xor_step1_hpc3o_first_half_3_order1;
    wire xor_step2_hpc3o_first_half_3_order1;
    reg w10;
    wire xor_br_hpc3o_v_3_order3;
    reg temp_hpc3o_v_3_order3;
    wire and_ta_hpc3o_v_3_order3;
    wire v10;
    wire u10;
    wire and_ar_hpc3o_w_3_order2;
    wire xor_step1_hpc3o_w_3_order2;
    reg w12;
    wire xor_br_hpc3o_v_3_order4;
    reg temp_hpc3o_v_3_order4;
    wire and_ta_hpc3o_v_3_order4;
    wire v12;
    wire u12;
    wire and_ar_hpc3o_w_3_order3;
    wire xor_step1_hpc3o_w_3_order3;
    reg w13;
    wire xor_br_hpc3o_v_3_order5;
    reg temp_hpc3o_v_3_order5;
    wire and_ta_hpc3o_v_3_order5;
    wire v13;
    wire u13;
    wire xor_br_hpc3o_first_half_3_order2;
    wire and_ar_hpc3o_first_half_3_order2;
    wire xor_step1_hpc3o_first_half_3_order2;
    wire xor_step2_hpc3o_first_half_3_order2;
    reg w20;
    wire xor_br_hpc3o_v_3_order6;
    reg temp_hpc3o_v_3_order6;
    wire and_ta_hpc3o_v_3_order6;
    wire v20;
    wire u20;
    wire and_ar_hpc3o_w_3_order4;
    wire xor_step1_hpc3o_w_3_order4;
    reg w21;
    wire xor_br_hpc3o_v_3_order7;
    reg temp_hpc3o_v_3_order7;
    wire and_ta_hpc3o_v_3_order7;
    wire v21;
    wire u21;
    wire and_ar_hpc3o_w_3_order5;
    wire xor_step1_hpc3o_w_3_order5;
    reg w23;
    wire xor_br_hpc3o_v_3_order8;
    reg temp_hpc3o_v_3_order8;
    wire and_ta_hpc3o_v_3_order8;
    wire v23;
    wire u23;
    wire xor_br_hpc3o_first_half_3_order3;
    wire and_ar_hpc3o_first_half_3_order3;
    wire xor_step1_hpc3o_first_half_3_order3;
    wire xor_step2_hpc3o_first_half_3_order3;
    reg w30;
    wire xor_br_hpc3o_v_3_order9;
    reg temp_hpc3o_v_3_order9;
    wire and_ta_hpc3o_v_3_order9;
    wire v30;
    wire u30;
    wire and_ar_hpc3o_w_3_order6;
    wire xor_step1_hpc3o_w_3_order6;
    reg w31;
    wire xor_br_hpc3o_v_3_order10;
    reg temp_hpc3o_v_3_order10;
    wire and_ta_hpc3o_v_3_order10;
    wire v31;
    wire u31;
    wire and_ar_hpc3o_w_3_order7;
    wire xor_step1_hpc3o_w_3_order7;
    reg w32;
    wire xor_br_hpc3o_v_3_order11;
    reg temp_hpc3o_v_3_order11;
    wire and_ta_hpc3o_v_3_order11;
    wire v32;
    wire u32;
    wire t1;
    wire t2;
    wire t3;
    wire t4;

    assign xor_br_hpc3o_first_half_3_order0 = (b0 ^ rand_01);
    assign and_ar_hpc3o_first_half_3_order0 = (a0 & xor_br_hpc3o_first_half_3_order0);
    assign xor_step1_hpc3o_first_half_3_order0 = (w0 ^ and_ar_hpc3o_first_half_3_order0);
    assign xor_step2_hpc3o_first_half_3_order0 = (xor_step1_hpc3o_first_half_3_order0 ^ rand_prime_01);
    assign xor_br_hpc3o_v_3_order0 = (b1 ^ rand_01);
    assign and_ta_hpc3o_v_3_order0 = (a0 & temp_hpc3o_v_3_order0);
    assign v01 = and_ta_hpc3o_v_3_order0;
    assign u01 = (v01 ^ w01);
    assign and_ar_hpc3o_w_3_order0 = (a0 & rand_02);
    assign xor_step1_hpc3o_w_3_order0 = (and_ar_hpc3o_w_3_order0 ^ rand_prime_02);
    assign xor_br_hpc3o_v_3_order1 = (b2 ^ rand_02);
    assign and_ta_hpc3o_v_3_order1 = (a0 & temp_hpc3o_v_3_order1);
    assign v02 = and_ta_hpc3o_v_3_order1;
    assign u02 = (v02 ^ w02);
    assign and_ar_hpc3o_w_3_order1 = (a0 & rand_03);
    assign xor_step1_hpc3o_w_3_order1 = (and_ar_hpc3o_w_3_order1 ^ rand_prime_03);
    assign xor_br_hpc3o_v_3_order2 = (b3 ^ rand_03);
    assign and_ta_hpc3o_v_3_order2 = (a0 & temp_hpc3o_v_3_order2);
    assign v03 = and_ta_hpc3o_v_3_order2;
    assign u03 = (v03 ^ w03);
    assign xor_br_hpc3o_first_half_3_order1 = (b1 ^ rand_01);
    assign and_ar_hpc3o_first_half_3_order1 = (a1 & xor_br_hpc3o_first_half_3_order1);
    assign xor_step1_hpc3o_first_half_3_order1 = (w1 ^ and_ar_hpc3o_first_half_3_order1);
    assign xor_step2_hpc3o_first_half_3_order1 = (xor_step1_hpc3o_first_half_3_order1 ^ rand_prime_01);
    assign xor_br_hpc3o_v_3_order3 = (b0 ^ rand_01);
    assign and_ta_hpc3o_v_3_order3 = (a1 & temp_hpc3o_v_3_order3);
    assign v10 = and_ta_hpc3o_v_3_order3;
    assign u10 = (v10 ^ w10);
    assign and_ar_hpc3o_w_3_order2 = (a1 & rand_12);
    assign xor_step1_hpc3o_w_3_order2 = (and_ar_hpc3o_w_3_order2 ^ rand_prime_12);
    assign xor_br_hpc3o_v_3_order4 = (b2 ^ rand_12);
    assign and_ta_hpc3o_v_3_order4 = (a1 & temp_hpc3o_v_3_order4);
    assign v12 = and_ta_hpc3o_v_3_order4;
    assign u12 = (v12 ^ w12);
    assign and_ar_hpc3o_w_3_order3 = (a1 & rand_13);
    assign xor_step1_hpc3o_w_3_order3 = (and_ar_hpc3o_w_3_order3 ^ rand_prime_13);
    assign xor_br_hpc3o_v_3_order5 = (b3 ^ rand_13);
    assign and_ta_hpc3o_v_3_order5 = (a1 & temp_hpc3o_v_3_order5);
    assign v13 = and_ta_hpc3o_v_3_order5;
    assign u13 = (v13 ^ w13);
    assign xor_br_hpc3o_first_half_3_order2 = (b2 ^ rand_02);
    assign and_ar_hpc3o_first_half_3_order2 = (a2 & xor_br_hpc3o_first_half_3_order2);
    assign xor_step1_hpc3o_first_half_3_order2 = (w2 ^ and_ar_hpc3o_first_half_3_order2);
    assign xor_step2_hpc3o_first_half_3_order2 = (xor_step1_hpc3o_first_half_3_order2 ^ rand_prime_02);
    assign xor_br_hpc3o_v_3_order6 = (b0 ^ rand_02);
    assign and_ta_hpc3o_v_3_order6 = (a2 & temp_hpc3o_v_3_order6);
    assign v20 = and_ta_hpc3o_v_3_order6;
    assign u20 = (v20 ^ w20);
    assign and_ar_hpc3o_w_3_order4 = (a2 & rand_12);
    assign xor_step1_hpc3o_w_3_order4 = (and_ar_hpc3o_w_3_order4 ^ rand_prime_12);
    assign xor_br_hpc3o_v_3_order7 = (b1 ^ rand_12);
    assign and_ta_hpc3o_v_3_order7 = (a2 & temp_hpc3o_v_3_order7);
    assign v21 = and_ta_hpc3o_v_3_order7;
    assign u21 = (v21 ^ w21);
    assign and_ar_hpc3o_w_3_order5 = (a2 & rand_23);
    assign xor_step1_hpc3o_w_3_order5 = (and_ar_hpc3o_w_3_order5 ^ rand_prime_23);
    assign xor_br_hpc3o_v_3_order8 = (b3 ^ rand_23);
    assign and_ta_hpc3o_v_3_order8 = (a2 & temp_hpc3o_v_3_order8);
    assign v23 = and_ta_hpc3o_v_3_order8;
    assign u23 = (v23 ^ w23);
    assign xor_br_hpc3o_first_half_3_order3 = (b3 ^ rand_03);
    assign and_ar_hpc3o_first_half_3_order3 = (a3 & xor_br_hpc3o_first_half_3_order3);
    assign xor_step1_hpc3o_first_half_3_order3 = (w3 ^ and_ar_hpc3o_first_half_3_order3);
    assign xor_step2_hpc3o_first_half_3_order3 = (xor_step1_hpc3o_first_half_3_order3 ^ rand_prime_03);
    assign xor_br_hpc3o_v_3_order9 = (b0 ^ rand_03);
    assign and_ta_hpc3o_v_3_order9 = (a3 & temp_hpc3o_v_3_order9);
    assign v30 = and_ta_hpc3o_v_3_order9;
    assign u30 = (v30 ^ w30);
    assign and_ar_hpc3o_w_3_order6 = (a3 & rand_13);
    assign xor_step1_hpc3o_w_3_order6 = (and_ar_hpc3o_w_3_order6 ^ rand_prime_13);
    assign xor_br_hpc3o_v_3_order10 = (b1 ^ rand_13);
    assign and_ta_hpc3o_v_3_order10 = (a3 & temp_hpc3o_v_3_order10);
    assign v31 = and_ta_hpc3o_v_3_order10;
    assign u31 = (v31 ^ w31);
    assign and_ar_hpc3o_w_3_order7 = (a3 & rand_23);
    assign xor_step1_hpc3o_w_3_order7 = (and_ar_hpc3o_w_3_order7 ^ rand_prime_23);
    assign xor_br_hpc3o_v_3_order11 = (b2 ^ rand_23);
    assign and_ta_hpc3o_v_3_order11 = (a3 & temp_hpc3o_v_3_order11);
    assign v32 = and_ta_hpc3o_v_3_order11;
    assign u32 = (v32 ^ w32);
    assign t1 = (u01 ^ u02);
    assign t2 = (u10 ^ u12);
    assign t3 = (u20 ^ u21);
    assign t4 = (u30 ^ u31);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc3o_first_half_3_order0;
        temp_hpc3o_v_3_order0 <= xor_br_hpc3o_v_3_order0;
        w02 <= xor_step1_hpc3o_w_3_order0;
        temp_hpc3o_v_3_order1 <= xor_br_hpc3o_v_3_order1;
        w03 <= xor_step1_hpc3o_w_3_order1;
        temp_hpc3o_v_3_order2 <= xor_br_hpc3o_v_3_order2;
        w10 <= xor_step2_hpc3o_first_half_3_order1;
        temp_hpc3o_v_3_order3 <= xor_br_hpc3o_v_3_order3;
        w12 <= xor_step1_hpc3o_w_3_order2;
        temp_hpc3o_v_3_order4 <= xor_br_hpc3o_v_3_order4;
        w13 <= xor_step1_hpc3o_w_3_order3;
        temp_hpc3o_v_3_order5 <= xor_br_hpc3o_v_3_order5;
        w20 <= xor_step2_hpc3o_first_half_3_order2;
        temp_hpc3o_v_3_order6 <= xor_br_hpc3o_v_3_order6;
        w21 <= xor_step1_hpc3o_w_3_order4;
        temp_hpc3o_v_3_order7 <= xor_br_hpc3o_v_3_order7;
        w23 <= xor_step1_hpc3o_w_3_order5;
        temp_hpc3o_v_3_order8 <= xor_br_hpc3o_v_3_order8;
        w30 <= xor_step2_hpc3o_first_half_3_order3;
        temp_hpc3o_v_3_order9 <= xor_br_hpc3o_v_3_order9;
        w31 <= xor_step1_hpc3o_w_3_order6;
        temp_hpc3o_v_3_order10 <= xor_br_hpc3o_v_3_order10;
        w32 <= xor_step1_hpc3o_w_3_order7;
        temp_hpc3o_v_3_order11 <= xor_br_hpc3o_v_3_order11;
        c0 <= (t1 ^ u03);
        c1 <= (t2 ^ u13);
        c2 <= (t3 ^ u23);
        c3 <= (t4 ^ u32);
    end

endmodule

