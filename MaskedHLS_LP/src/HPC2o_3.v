module HPC2o(
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
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
//Intermediate values
    wire temp_ab_hpc2o_first_half_2_order0;
    wire a_neg_hpc2o_first_half_2_order0;
    wire temp_ar_hpc2o_first_half_2_order0;
    wire xor_step1_hpc2o_first_half_2_order0;
    wire xor_step2_hpc2o_first_half_2_order0;
    reg w01;
    wire xor_br_hpc2o_v_2_order0;
    reg temp_hpc2o_v_2_order0;
    wire and_ta_hpc2o_v_2_order0;
    reg v01;
    reg w01_reg;
    wire u01;
    wire a_neg_hpc2o_w_2_order0;
    wire and_ar_hpc2o_w_2_order0;
    reg w02;
    wire xor_br_hpc2o_v_2_order1;
    reg temp_hpc2o_v_2_order1;
    wire and_ta_hpc2o_v_2_order1;
    reg v02;
    reg w02_reg;
    wire u02;
    wire temp_ab_hpc2o_first_half_2_order1;
    wire a_neg_hpc2o_first_half_2_order1;
    wire temp_ar_hpc2o_first_half_2_order1;
    wire xor_step1_hpc2o_first_half_2_order1;
    wire xor_step2_hpc2o_first_half_2_order1;
    reg w10;
    wire xor_br_hpc2o_v_2_order2;
    reg temp_hpc2o_v_2_order2;
    wire and_ta_hpc2o_v_2_order2;
    reg v10;
    reg w10_reg;
    wire u10;
    wire a_neg_hpc2o_w_2_order1;
    wire and_ar_hpc2o_w_2_order1;
    reg w12;
    wire xor_br_hpc2o_v_2_order3;
    reg temp_hpc2o_v_2_order3;
    wire and_ta_hpc2o_v_2_order3;
    reg v12;
    reg w12_reg;
    wire u12;
    wire temp_ab_hpc2o_first_half_2_order2;
    wire a_neg_hpc2o_first_half_2_order2;
    wire temp_ar_hpc2o_first_half_2_order2;
    wire xor_step1_hpc2o_first_half_2_order2;
    wire xor_step2_hpc2o_first_half_2_order2;
    reg w20;
    wire xor_br_hpc2o_v_2_order4;
    reg temp_hpc2o_v_2_order4;
    wire and_ta_hpc2o_v_2_order4;
    reg v20;
    reg w20_reg;
    wire u20;
    wire a_neg_hpc2o_w_2_order2;
    wire and_ar_hpc2o_w_2_order2;
    reg w21;
    wire xor_br_hpc2o_v_2_order5;
    reg temp_hpc2o_v_2_order5;
    wire and_ta_hpc2o_v_2_order5;
    reg v21;
    reg w21_reg;
    wire u21;

    assign temp_ab_hpc2o_first_half_2_order0 = (a0 & b0);
    assign a_neg_hpc2o_first_half_2_order0 = !a0;
    assign temp_ar_hpc2o_first_half_2_order0 = (a_neg_hpc2o_first_half_2_order0 & rand_01);
    assign xor_step1_hpc2o_first_half_2_order0 = (w0 ^ temp_ab_hpc2o_first_half_2_order0);
    assign xor_step2_hpc2o_first_half_2_order0 = (xor_step1_hpc2o_first_half_2_order0 ^ temp_ar_hpc2o_first_half_2_order0);
    assign xor_br_hpc2o_v_2_order0 = (b1 ^ rand_01);
    assign and_ta_hpc2o_v_2_order0 = (temp_hpc2o_v_2_order0 & a0);
    assign u01 = (v01 ^ w01_reg);
    assign a_neg_hpc2o_w_2_order0 = !a0;
    assign and_ar_hpc2o_w_2_order0 = (a_neg_hpc2o_w_2_order0 & rand_02);
    assign xor_br_hpc2o_v_2_order1 = (b2 ^ rand_02);
    assign and_ta_hpc2o_v_2_order1 = (temp_hpc2o_v_2_order1 & a0);
    assign u02 = (v02 | w02_reg);
    assign temp_ab_hpc2o_first_half_2_order1 = (a1 & b1);
    assign a_neg_hpc2o_first_half_2_order1 = !a1;
    assign temp_ar_hpc2o_first_half_2_order1 = (a_neg_hpc2o_first_half_2_order1 & rand_01);
    assign xor_step1_hpc2o_first_half_2_order1 = (w1 ^ temp_ab_hpc2o_first_half_2_order1);
    assign xor_step2_hpc2o_first_half_2_order1 = (xor_step1_hpc2o_first_half_2_order1 ^ temp_ar_hpc2o_first_half_2_order1);
    assign xor_br_hpc2o_v_2_order2 = (b0 ^ rand_01);
    assign and_ta_hpc2o_v_2_order2 = (temp_hpc2o_v_2_order2 & a1);
    assign u10 = (v10 ^ w10_reg);
    assign a_neg_hpc2o_w_2_order1 = !a1;
    assign and_ar_hpc2o_w_2_order1 = (a_neg_hpc2o_w_2_order1 & rand_12);
    assign xor_br_hpc2o_v_2_order3 = (b2 ^ rand_12);
    assign and_ta_hpc2o_v_2_order3 = (temp_hpc2o_v_2_order3 & a1);
    assign u12 = (v12 | w12_reg);
    assign temp_ab_hpc2o_first_half_2_order2 = (a2 & b2);
    assign a_neg_hpc2o_first_half_2_order2 = !a2;
    assign temp_ar_hpc2o_first_half_2_order2 = (a_neg_hpc2o_first_half_2_order2 & rand_02);
    assign xor_step1_hpc2o_first_half_2_order2 = (w2 ^ temp_ab_hpc2o_first_half_2_order2);
    assign xor_step2_hpc2o_first_half_2_order2 = (xor_step1_hpc2o_first_half_2_order2 ^ temp_ar_hpc2o_first_half_2_order2);
    assign xor_br_hpc2o_v_2_order4 = (b0 ^ rand_02);
    assign and_ta_hpc2o_v_2_order4 = (temp_hpc2o_v_2_order4 & a2);
    assign u20 = (v20 ^ w20_reg);
    assign a_neg_hpc2o_w_2_order2 = !a2;
    assign and_ar_hpc2o_w_2_order2 = (a_neg_hpc2o_w_2_order2 & rand_12);
    assign xor_br_hpc2o_v_2_order5 = (b1 ^ rand_12);
    assign and_ta_hpc2o_v_2_order5 = (temp_hpc2o_v_2_order5 & a2);
    assign u21 = (v21 | w21_reg);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc2o_first_half_2_order0;
        temp_hpc2o_v_2_order0 <= xor_br_hpc2o_v_2_order0;
        v01 <= and_ta_hpc2o_v_2_order0;
        w01_reg <= w01;
        w02 <= and_ar_hpc2o_w_2_order0;
        temp_hpc2o_v_2_order1 <= xor_br_hpc2o_v_2_order1;
        v02 <= and_ta_hpc2o_v_2_order1;
        w02_reg <= w02;
        w10 <= xor_step2_hpc2o_first_half_2_order1;
        temp_hpc2o_v_2_order2 <= xor_br_hpc2o_v_2_order2;
        v10 <= and_ta_hpc2o_v_2_order2;
        w10_reg <= w10;
        w12 <= and_ar_hpc2o_w_2_order1;
        temp_hpc2o_v_2_order3 <= xor_br_hpc2o_v_2_order3;
        v12 <= and_ta_hpc2o_v_2_order3;
        w12_reg <= w12;
        w20 <= xor_step2_hpc2o_first_half_2_order2;
        temp_hpc2o_v_2_order4 <= xor_br_hpc2o_v_2_order4;
        v20 <= and_ta_hpc2o_v_2_order4;
        w20_reg <= w20;
        w21 <= and_ar_hpc2o_w_2_order2;
        temp_hpc2o_v_2_order5 <= xor_br_hpc2o_v_2_order5;
        v21 <= and_ta_hpc2o_v_2_order5;
        w21_reg <= w21;
        c0 <= (u01 ^ u02);
        c1 <= (u10 ^ u12);
        c2 <= (u20 ^ u21);
    end

endmodule

