module HPC3o(
    clk,
    a0,
    a1,
    a2,
    b0,
    b1,
    b2,
    w0,
    w1,
    w2,
    rand_01,
    rand_02,
    rand_12,
    rand_prime_01,
    rand_prime_02,
    rand_prime_12,
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
    input  w0;
    input  w1;
    input  w2;
    input  rand_01;
    input  rand_02;
    input  rand_12;
    input  rand_prime_01;
    input  rand_prime_02;
    input  rand_prime_12;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
//Intermediate values
    wire xor_br_hpc3o_first_half_2_order0;
    wire and_ar_hpc3o_first_half_2_order0;
    wire xor_step1_hpc3o_first_half_2_order0;
    wire xor_step2_hpc3o_first_half_2_order0;
    reg w01;
    wire xor_br_hpc3o_v_2_order0;
    reg temp_hpc3o_v_2_order0;
    wire and_ta_hpc3o_v_2_order0;
    wire v01;
    wire u01;
    wire and_ar_hpc3o_w_2_order0;
    wire xor_step1_hpc3o_w_2_order0;
    reg w02;
    wire xor_br_hpc3o_v_2_order1;
    reg temp_hpc3o_v_2_order1;
    wire and_ta_hpc3o_v_2_order1;
    wire v02;
    wire u02;
    wire xor_br_hpc3o_first_half_2_order1;
    wire and_ar_hpc3o_first_half_2_order1;
    wire xor_step1_hpc3o_first_half_2_order1;
    wire xor_step2_hpc3o_first_half_2_order1;
    reg w10;
    wire xor_br_hpc3o_v_2_order2;
    reg temp_hpc3o_v_2_order2;
    wire and_ta_hpc3o_v_2_order2;
    wire v10;
    wire u10;
    wire and_ar_hpc3o_w_2_order1;
    wire xor_step1_hpc3o_w_2_order1;
    reg w12;
    wire xor_br_hpc3o_v_2_order3;
    reg temp_hpc3o_v_2_order3;
    wire and_ta_hpc3o_v_2_order3;
    wire v12;
    wire u12;
    wire xor_br_hpc3o_first_half_2_order2;
    wire and_ar_hpc3o_first_half_2_order2;
    wire xor_step1_hpc3o_first_half_2_order2;
    wire xor_step2_hpc3o_first_half_2_order2;
    reg w20;
    wire xor_br_hpc3o_v_2_order4;
    reg temp_hpc3o_v_2_order4;
    wire and_ta_hpc3o_v_2_order4;
    wire v20;
    wire u20;
    wire and_ar_hpc3o_w_2_order2;
    wire xor_step1_hpc3o_w_2_order2;
    reg w21;
    wire xor_br_hpc3o_v_2_order5;
    reg temp_hpc3o_v_2_order5;
    wire and_ta_hpc3o_v_2_order5;
    wire v21;
    wire u21;

    assign xor_br_hpc3o_first_half_2_order0 = (b0 ^ rand_01);
    assign and_ar_hpc3o_first_half_2_order0 = (a0 & xor_br_hpc3o_first_half_2_order0);
    assign xor_step1_hpc3o_first_half_2_order0 = (w0 ^ and_ar_hpc3o_first_half_2_order0);
    assign xor_step2_hpc3o_first_half_2_order0 = (xor_step1_hpc3o_first_half_2_order0 ^ rand_prime_01);
    assign xor_br_hpc3o_v_2_order0 = (b1 ^ rand_01);
    assign and_ta_hpc3o_v_2_order0 = (a0 & temp_hpc3o_v_2_order0);
    assign v01 = and_ta_hpc3o_v_2_order0;
    assign u01 = (v01 ^ w01);
    assign and_ar_hpc3o_w_2_order0 = (a0 & rand_02);
    assign xor_step1_hpc3o_w_2_order0 = (and_ar_hpc3o_w_2_order0 ^ rand_prime_02);
    assign xor_br_hpc3o_v_2_order1 = (b2 ^ rand_02);
    assign and_ta_hpc3o_v_2_order1 = (a0 & temp_hpc3o_v_2_order1);
    assign v02 = and_ta_hpc3o_v_2_order1;
    assign u02 = (v02 ^ w02);
    assign xor_br_hpc3o_first_half_2_order1 = (b1 ^ rand_01);
    assign and_ar_hpc3o_first_half_2_order1 = (a1 & xor_br_hpc3o_first_half_2_order1);
    assign xor_step1_hpc3o_first_half_2_order1 = (w1 ^ and_ar_hpc3o_first_half_2_order1);
    assign xor_step2_hpc3o_first_half_2_order1 = (xor_step1_hpc3o_first_half_2_order1 ^ rand_prime_01);
    assign xor_br_hpc3o_v_2_order2 = (b0 ^ rand_01);
    assign and_ta_hpc3o_v_2_order2 = (a1 & temp_hpc3o_v_2_order2);
    assign v10 = and_ta_hpc3o_v_2_order2;
    assign u10 = (v10 ^ w10);
    assign and_ar_hpc3o_w_2_order1 = (a1 & rand_12);
    assign xor_step1_hpc3o_w_2_order1 = (and_ar_hpc3o_w_2_order1 ^ rand_prime_12);
    assign xor_br_hpc3o_v_2_order3 = (b2 ^ rand_12);
    assign and_ta_hpc3o_v_2_order3 = (a1 & temp_hpc3o_v_2_order3);
    assign v12 = and_ta_hpc3o_v_2_order3;
    assign u12 = (v12 ^ w12);
    assign xor_br_hpc3o_first_half_2_order2 = (b2 ^ rand_02);
    assign and_ar_hpc3o_first_half_2_order2 = (a2 & xor_br_hpc3o_first_half_2_order2);
    assign xor_step1_hpc3o_first_half_2_order2 = (w2 ^ and_ar_hpc3o_first_half_2_order2);
    assign xor_step2_hpc3o_first_half_2_order2 = (xor_step1_hpc3o_first_half_2_order2 ^ rand_prime_02);
    assign xor_br_hpc3o_v_2_order4 = (b0 ^ rand_02);
    assign and_ta_hpc3o_v_2_order4 = (a2 & temp_hpc3o_v_2_order4);
    assign v20 = and_ta_hpc3o_v_2_order4;
    assign u20 = (v20 ^ w20);
    assign and_ar_hpc3o_w_2_order2 = (a2 & rand_12);
    assign xor_step1_hpc3o_w_2_order2 = (and_ar_hpc3o_w_2_order2 ^ rand_prime_12);
    assign xor_br_hpc3o_v_2_order5 = (b1 ^ rand_12);
    assign and_ta_hpc3o_v_2_order5 = (a2 & temp_hpc3o_v_2_order5);
    assign v21 = and_ta_hpc3o_v_2_order5;
    assign u21 = (v21 ^ w21);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc3o_first_half_2_order0;
        temp_hpc3o_v_2_order0 <= xor_br_hpc3o_v_2_order0;
        w02 <= xor_step1_hpc3o_w_2_order0;
        temp_hpc3o_v_2_order1 <= xor_br_hpc3o_v_2_order1;
        w10 <= xor_step2_hpc3o_first_half_2_order1;
        temp_hpc3o_v_2_order2 <= xor_br_hpc3o_v_2_order2;
        w12 <= xor_step1_hpc3o_w_2_order1;
        temp_hpc3o_v_2_order3 <= xor_br_hpc3o_v_2_order3;
        w20 <= xor_step2_hpc3o_first_half_2_order2;
        temp_hpc3o_v_2_order4 <= xor_br_hpc3o_v_2_order4;
        w21 <= xor_step1_hpc3o_w_2_order2;
        temp_hpc3o_v_2_order5 <= xor_br_hpc3o_v_2_order5;
        c0 <= (u01 ^ u02);
        c1 <= (u10 ^ u12);
        c2 <= (u20 ^ u21);
    end

endmodule

