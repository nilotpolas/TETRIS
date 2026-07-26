module HPC1(
    clk,
    a0,
    a1,
    a2,
    a3,
    b0,
    b1,
    b2,
    b3,
    rand_0,
    rand_1,
    rand_2,
    prand_01,
    prand_02,
    prand_03,
    prand_12,
    prand_13,
    prand_23,
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
    input  rand_0;
    input  rand_1;
    input  rand_2;
    input  prand_01;
    input  prand_02;
    input  prand_03;
    input  prand_12;
    input  prand_13;
    input  prand_23;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
//Intermediate values
    wire r3;
    reg b_share__hpc1_same_shares_3_order0;
    wire v00;
    reg b_share__hpc1_cross_domain_3_order0;
    wire a_and_b_hpc1_cross_domain_3_order0;
    wire v01;
    reg b_share__hpc1_cross_domain_3_order1;
    wire a_and_b_hpc1_cross_domain_3_order1;
    wire v02;
    reg b_share__hpc1_cross_domain_3_order2;
    wire a_and_b_hpc1_cross_domain_3_order2;
    wire v03;
    reg b_share__hpc1_cross_domain_3_order3;
    wire a_and_b_hpc1_cross_domain_3_order3;
    wire v10;
    reg b_share__hpc1_same_shares_3_order1;
    wire v11;
    reg b_share__hpc1_cross_domain_3_order4;
    wire a_and_b_hpc1_cross_domain_3_order4;
    wire v12;
    reg b_share__hpc1_cross_domain_3_order5;
    wire a_and_b_hpc1_cross_domain_3_order5;
    wire v13;
    reg b_share__hpc1_cross_domain_3_order6;
    wire a_and_b_hpc1_cross_domain_3_order6;
    wire v20;
    reg b_share__hpc1_cross_domain_3_order7;
    wire a_and_b_hpc1_cross_domain_3_order7;
    wire v21;
    reg b_share__hpc1_same_shares_3_order2;
    wire v22;
    reg b_share__hpc1_cross_domain_3_order8;
    wire a_and_b_hpc1_cross_domain_3_order8;
    wire v23;
    reg b_share__hpc1_cross_domain_3_order9;
    wire a_and_b_hpc1_cross_domain_3_order9;
    wire v30;
    reg b_share__hpc1_cross_domain_3_order10;
    wire a_and_b_hpc1_cross_domain_3_order10;
    wire v31;
    reg b_share__hpc1_cross_domain_3_order11;
    wire a_and_b_hpc1_cross_domain_3_order11;
    wire v32;
    reg b_share__hpc1_same_shares_3_order3;
    wire v33;
    wire t0;
    wire t1;
    wire z205_assgn205;
    wire t2;
    wire t3;
    wire z211_assgn211;
    wire t4;
    wire t5;
    wire z217_assgn217;
    wire t6;
    wire t7;
    wire z223_assgn223;

    assign r3 = ((rand_0 ^ rand_1) ^ rand_2);
    assign v00 = (a0 & b_share__hpc1_same_shares_3_order0);
    assign a_and_b_hpc1_cross_domain_3_order0 = (a0 & b_share__hpc1_cross_domain_3_order0);
    assign v01 = (a_and_b_hpc1_cross_domain_3_order0 ^ prand_01);
    assign a_and_b_hpc1_cross_domain_3_order1 = (a0 & b_share__hpc1_cross_domain_3_order1);
    assign v02 = (a_and_b_hpc1_cross_domain_3_order1 ^ prand_02);
    assign a_and_b_hpc1_cross_domain_3_order2 = (a0 & b_share__hpc1_cross_domain_3_order2);
    assign v03 = (a_and_b_hpc1_cross_domain_3_order2 ^ prand_03);
    assign a_and_b_hpc1_cross_domain_3_order3 = (a1 & b_share__hpc1_cross_domain_3_order3);
    assign v10 = (a_and_b_hpc1_cross_domain_3_order3 ^ prand_01);
    assign v11 = (a1 & b_share__hpc1_same_shares_3_order1);
    assign a_and_b_hpc1_cross_domain_3_order4 = (a1 & b_share__hpc1_cross_domain_3_order4);
    assign v12 = (a_and_b_hpc1_cross_domain_3_order4 ^ prand_12);
    assign a_and_b_hpc1_cross_domain_3_order5 = (a1 & b_share__hpc1_cross_domain_3_order5);
    assign v13 = (a_and_b_hpc1_cross_domain_3_order5 ^ prand_13);
    assign a_and_b_hpc1_cross_domain_3_order6 = (a2 & b_share__hpc1_cross_domain_3_order6);
    assign v20 = (a_and_b_hpc1_cross_domain_3_order6 ^ prand_02);
    assign a_and_b_hpc1_cross_domain_3_order7 = (a2 & b_share__hpc1_cross_domain_3_order7);
    assign v21 = (a_and_b_hpc1_cross_domain_3_order7 ^ prand_12);
    assign v22 = (a2 & b_share__hpc1_same_shares_3_order2);
    assign a_and_b_hpc1_cross_domain_3_order8 = (a2 & b_share__hpc1_cross_domain_3_order8);
    assign v23 = (a_and_b_hpc1_cross_domain_3_order8 ^ prand_23);
    assign a_and_b_hpc1_cross_domain_3_order9 = (a3 & b_share__hpc1_cross_domain_3_order9);
    assign v30 = (a_and_b_hpc1_cross_domain_3_order9 ^ prand_03);
    assign a_and_b_hpc1_cross_domain_3_order10 = (a3 & b_share__hpc1_cross_domain_3_order10);
    assign v31 = (a_and_b_hpc1_cross_domain_3_order10 ^ prand_13);
    assign a_and_b_hpc1_cross_domain_3_order11 = (a3 & b_share__hpc1_cross_domain_3_order11);
    assign v32 = (a_and_b_hpc1_cross_domain_3_order11 ^ prand_23);
    assign v33 = (a3 & b_share__hpc1_same_shares_3_order3);
    assign t0 = (v00 ^ v01);
    assign t1 = (t0 ^ v02);
    assign z205_assgn205 = (t1 ^ v03);
    assign t2 = (v10 ^ v11);
    assign t3 = (t2 ^ v12);
    assign z211_assgn211 = (t3 ^ v13);
    assign t4 = (v20 ^ v21);
    assign t5 = (t4 ^ v22);
    assign z217_assgn217 = (t5 ^ v23);
    assign t6 = (v30 ^ v31);
    assign t7 = (t6 ^ v32);
    assign z223_assgn223 = (t7 ^ v33);

    always @(posedge clk) begin
        b_share__hpc1_same_shares_3_order0 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_3_order0 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_3_order1 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_3_order2 <= (b3 ^ r3);
        b_share__hpc1_cross_domain_3_order3 <= (b0 ^ rand_0);
        b_share__hpc1_same_shares_3_order1 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_3_order4 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_3_order5 <= (b3 ^ r3);
        b_share__hpc1_cross_domain_3_order6 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_3_order7 <= (b1 ^ rand_1);
        b_share__hpc1_same_shares_3_order2 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_3_order8 <= (b3 ^ r3);
        b_share__hpc1_cross_domain_3_order9 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_3_order10 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_3_order11 <= (b2 ^ rand_2);
        b_share__hpc1_same_shares_3_order3 <= (b3 ^ r3);
        c0 <= z205_assgn205;
        c1 <= z211_assgn211;
        c2 <= z217_assgn217;
        c3 <= z223_assgn223;
    end

endmodule

