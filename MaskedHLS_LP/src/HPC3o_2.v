module HPC3o(
    clk,
    a0,
    a1,
    b0,
    b1,
    w0,
    w1,
    rand_01,
    rand_prime_01,
    c0,
    c1
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  b0;
    input  b1;
    input  w0;
    input  w1;
    input  rand_01;
    input  rand_prime_01;
//OUTPUTS
    output reg  c0;
    output reg  c1;
//Intermediate values
    wire xor_br_hpc3o_first_half_1_order0;
    wire and_ar_hpc3o_first_half_1_order0;
    wire xor_step1_hpc3o_first_half_1_order0;
    wire xor_step2_hpc3o_first_half_1_order0;
    reg w01;
    wire xor_br_hpc3o_v_1_order0;
    reg temp_hpc3o_v_1_order0;
    wire and_ta_hpc3o_v_1_order0;
    wire v01;
    wire u01;
    wire xor_br_hpc3o_first_half_1_order1;
    wire and_ar_hpc3o_first_half_1_order1;
    wire xor_step1_hpc3o_first_half_1_order1;
    wire xor_step2_hpc3o_first_half_1_order1;
    reg w10;
    wire xor_br_hpc3o_v_1_order1;
    reg temp_hpc3o_v_1_order1;
    wire and_ta_hpc3o_v_1_order1;
    wire v10;
    wire u10;

    assign xor_br_hpc3o_first_half_1_order0 = (b0 ^ rand_01);
    assign and_ar_hpc3o_first_half_1_order0 = (a0 & xor_br_hpc3o_first_half_1_order0);
    assign xor_step1_hpc3o_first_half_1_order0 = (w0 ^ and_ar_hpc3o_first_half_1_order0);
    assign xor_step2_hpc3o_first_half_1_order0 = (xor_step1_hpc3o_first_half_1_order0 ^ rand_prime_01);
    assign xor_br_hpc3o_v_1_order0 = (b1 ^ rand_01);
    assign and_ta_hpc3o_v_1_order0 = (a0 & temp_hpc3o_v_1_order0);
    assign v01 = and_ta_hpc3o_v_1_order0;
    assign u01 = (v01 ^ w01);
    assign xor_br_hpc3o_first_half_1_order1 = (b1 ^ rand_01);
    assign and_ar_hpc3o_first_half_1_order1 = (a1 & xor_br_hpc3o_first_half_1_order1);
    assign xor_step1_hpc3o_first_half_1_order1 = (w1 ^ and_ar_hpc3o_first_half_1_order1);
    assign xor_step2_hpc3o_first_half_1_order1 = (xor_step1_hpc3o_first_half_1_order1 ^ rand_prime_01);
    assign xor_br_hpc3o_v_1_order1 = (b0 ^ rand_01);
    assign and_ta_hpc3o_v_1_order1 = (a1 & temp_hpc3o_v_1_order1);
    assign v10 = and_ta_hpc3o_v_1_order1;
    assign u10 = (v10 ^ w10);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc3o_first_half_1_order0;
        temp_hpc3o_v_1_order0 <= xor_br_hpc3o_v_1_order0;
        w10 <= xor_step2_hpc3o_first_half_1_order1;
        temp_hpc3o_v_1_order1 <= xor_br_hpc3o_v_1_order1;
        c0 <= u01;
        c1 <= u10;
    end

endmodule

