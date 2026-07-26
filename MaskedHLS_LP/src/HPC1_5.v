module HPC1(
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
    rand_0,
    rand_1,
    rand_2,
    rand_3,
    prand_01,
    prand_02,
    prand_03,
    prand_04,
    prand_12,
    prand_13,
    prand_14,
    prand_23,
    prand_24,
    prand_34,
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
    input  rand_0;
    input  rand_1;
    input  rand_2;
    input  rand_3;
    input  prand_01;
    input  prand_02;
    input  prand_03;
    input  prand_04;
    input  prand_12;
    input  prand_13;
    input  prand_14;
    input  prand_23;
    input  prand_24;
    input  prand_34;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
    output reg  c4;
//Intermediate values
    wire r4;
    reg b_share__hpc1_same_shares_4_order0;
    wire v00;
    reg b_share__hpc1_cross_domain_4_order0;
    wire a_and_b_hpc1_cross_domain_4_order0;
    wire v01;
    reg b_share__hpc1_cross_domain_4_order1;
    wire a_and_b_hpc1_cross_domain_4_order1;
    wire v02;
    reg b_share__hpc1_cross_domain_4_order2;
    wire a_and_b_hpc1_cross_domain_4_order2;
    wire v03;
    reg b_share__hpc1_cross_domain_4_order3;
    wire a_and_b_hpc1_cross_domain_4_order3;
    wire v04;
    reg b_share__hpc1_cross_domain_4_order4;
    wire a_and_b_hpc1_cross_domain_4_order4;
    wire v10;
    reg b_share__hpc1_same_shares_4_order1;
    wire v11;
    reg b_share__hpc1_cross_domain_4_order5;
    wire a_and_b_hpc1_cross_domain_4_order5;
    wire v12;
    reg b_share__hpc1_cross_domain_4_order6;
    wire a_and_b_hpc1_cross_domain_4_order6;
    wire v13;
    reg b_share__hpc1_cross_domain_4_order7;
    wire a_and_b_hpc1_cross_domain_4_order7;
    wire v14;
    reg b_share__hpc1_cross_domain_4_order8;
    wire a_and_b_hpc1_cross_domain_4_order8;
    wire v20;
    reg b_share__hpc1_cross_domain_4_order9;
    wire a_and_b_hpc1_cross_domain_4_order9;
    wire v21;
    reg b_share__hpc1_same_shares_4_order2;
    wire v22;
    reg b_share__hpc1_cross_domain_4_order10;
    wire a_and_b_hpc1_cross_domain_4_order10;
    wire v23;
    reg b_share__hpc1_cross_domain_4_order11;
    wire a_and_b_hpc1_cross_domain_4_order11;
    wire v24;
    reg b_share__hpc1_cross_domain_4_order12;
    wire a_and_b_hpc1_cross_domain_4_order12;
    wire v30;
    reg b_share__hpc1_cross_domain_4_order13;
    wire a_and_b_hpc1_cross_domain_4_order13;
    wire v31;
    reg b_share__hpc1_cross_domain_4_order14;
    wire a_and_b_hpc1_cross_domain_4_order14;
    wire v32;
    reg b_share__hpc1_same_shares_4_order3;
    wire v33;
    reg b_share__hpc1_cross_domain_4_order15;
    wire a_and_b_hpc1_cross_domain_4_order15;
    wire v34;
    reg b_share__hpc1_cross_domain_4_order16;
    wire a_and_b_hpc1_cross_domain_4_order16;
    wire v40;
    reg b_share__hpc1_cross_domain_4_order17;
    wire a_and_b_hpc1_cross_domain_4_order17;
    wire v41;
    reg b_share__hpc1_cross_domain_4_order18;
    wire a_and_b_hpc1_cross_domain_4_order18;
    wire v42;
    reg b_share__hpc1_cross_domain_4_order19;
    wire a_and_b_hpc1_cross_domain_4_order19;
    wire v43;
    reg b_share__hpc1_same_shares_4_order4;
    wire v44;
    wire t0;
    wire t1;
    wire t2;
    wire z327_assgn327;
    wire t3;
    wire t4;
    wire t5;
    wire z335_assgn335;
    wire t6;
    wire t7;
    wire t8;
    wire z343_assgn343;
    wire t9;
    wire t10;
    wire t11;
    wire z351_assgn351;
    wire t12;
    wire t13;
    wire t14;
    wire z359_assgn359;

    assign r4 = (((rand_0 ^ rand_1) ^ rand_2) ^ rand_3);
    assign v00 = (a0 & b_share__hpc1_same_shares_4_order0);
    assign a_and_b_hpc1_cross_domain_4_order0 = (a0 & b_share__hpc1_cross_domain_4_order0);
    assign v01 = (a_and_b_hpc1_cross_domain_4_order0 ^ prand_01);
    assign a_and_b_hpc1_cross_domain_4_order1 = (a0 & b_share__hpc1_cross_domain_4_order1);
    assign v02 = (a_and_b_hpc1_cross_domain_4_order1 ^ prand_02);
    assign a_and_b_hpc1_cross_domain_4_order2 = (a0 & b_share__hpc1_cross_domain_4_order2);
    assign v03 = (a_and_b_hpc1_cross_domain_4_order2 ^ prand_03);
    assign a_and_b_hpc1_cross_domain_4_order3 = (a0 & b_share__hpc1_cross_domain_4_order3);
    assign v04 = (a_and_b_hpc1_cross_domain_4_order3 ^ prand_04);
    assign a_and_b_hpc1_cross_domain_4_order4 = (a1 & b_share__hpc1_cross_domain_4_order4);
    assign v10 = (a_and_b_hpc1_cross_domain_4_order4 ^ prand_01);
    assign v11 = (a1 & b_share__hpc1_same_shares_4_order1);
    assign a_and_b_hpc1_cross_domain_4_order5 = (a1 & b_share__hpc1_cross_domain_4_order5);
    assign v12 = (a_and_b_hpc1_cross_domain_4_order5 ^ prand_12);
    assign a_and_b_hpc1_cross_domain_4_order6 = (a1 & b_share__hpc1_cross_domain_4_order6);
    assign v13 = (a_and_b_hpc1_cross_domain_4_order6 ^ prand_13);
    assign a_and_b_hpc1_cross_domain_4_order7 = (a1 & b_share__hpc1_cross_domain_4_order7);
    assign v14 = (a_and_b_hpc1_cross_domain_4_order7 ^ prand_14);
    assign a_and_b_hpc1_cross_domain_4_order8 = (a2 & b_share__hpc1_cross_domain_4_order8);
    assign v20 = (a_and_b_hpc1_cross_domain_4_order8 ^ prand_02);
    assign a_and_b_hpc1_cross_domain_4_order9 = (a2 & b_share__hpc1_cross_domain_4_order9);
    assign v21 = (a_and_b_hpc1_cross_domain_4_order9 ^ prand_12);
    assign v22 = (a2 & b_share__hpc1_same_shares_4_order2);
    assign a_and_b_hpc1_cross_domain_4_order10 = (a2 & b_share__hpc1_cross_domain_4_order10);
    assign v23 = (a_and_b_hpc1_cross_domain_4_order10 ^ prand_23);
    assign a_and_b_hpc1_cross_domain_4_order11 = (a2 & b_share__hpc1_cross_domain_4_order11);
    assign v24 = (a_and_b_hpc1_cross_domain_4_order11 ^ prand_24);
    assign a_and_b_hpc1_cross_domain_4_order12 = (a3 & b_share__hpc1_cross_domain_4_order12);
    assign v30 = (a_and_b_hpc1_cross_domain_4_order12 ^ prand_03);
    assign a_and_b_hpc1_cross_domain_4_order13 = (a3 & b_share__hpc1_cross_domain_4_order13);
    assign v31 = (a_and_b_hpc1_cross_domain_4_order13 ^ prand_13);
    assign a_and_b_hpc1_cross_domain_4_order14 = (a3 & b_share__hpc1_cross_domain_4_order14);
    assign v32 = (a_and_b_hpc1_cross_domain_4_order14 ^ prand_23);
    assign v33 = (a3 & b_share__hpc1_same_shares_4_order3);
    assign a_and_b_hpc1_cross_domain_4_order15 = (a3 & b_share__hpc1_cross_domain_4_order15);
    assign v34 = (a_and_b_hpc1_cross_domain_4_order15 ^ prand_34);
    assign a_and_b_hpc1_cross_domain_4_order16 = (a4 & b_share__hpc1_cross_domain_4_order16);
    assign v40 = (a_and_b_hpc1_cross_domain_4_order16 ^ prand_04);
    assign a_and_b_hpc1_cross_domain_4_order17 = (a4 & b_share__hpc1_cross_domain_4_order17);
    assign v41 = (a_and_b_hpc1_cross_domain_4_order17 ^ prand_14);
    assign a_and_b_hpc1_cross_domain_4_order18 = (a4 & b_share__hpc1_cross_domain_4_order18);
    assign v42 = (a_and_b_hpc1_cross_domain_4_order18 ^ prand_24);
    assign a_and_b_hpc1_cross_domain_4_order19 = (a4 & b_share__hpc1_cross_domain_4_order19);
    assign v43 = (a_and_b_hpc1_cross_domain_4_order19 ^ prand_34);
    assign v44 = (a4 & b_share__hpc1_same_shares_4_order4);
    assign t0 = (v00 ^ v01);
    assign t1 = (t0 ^ v02);
    assign t2 = (t1 ^ v03);
    assign z327_assgn327 = (t2 ^ v04);
    assign t3 = (v10 ^ v11);
    assign t4 = (t3 ^ v12);
    assign t5 = (t4 ^ v13);
    assign z335_assgn335 = (t5 ^ v14);
    assign t6 = (v20 ^ v21);
    assign t7 = (t6 ^ v22);
    assign t8 = (t7 ^ v23);
    assign z343_assgn343 = (t8 ^ v24);
    assign t9 = (v30 ^ v31);
    assign t10 = (t9 ^ v32);
    assign t11 = (t10 ^ v33);
    assign z351_assgn351 = (t11 ^ v34);
    assign t12 = (v40 ^ v41);
    assign t13 = (t12 ^ v42);
    assign t14 = (t13 ^ v43);
    assign z359_assgn359 = (t14 ^ v44);

    always @(posedge clk) begin
        b_share__hpc1_same_shares_4_order0 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_4_order0 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_4_order1 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_4_order2 <= (b3 ^ rand_3);
        b_share__hpc1_cross_domain_4_order3 <= (b4 ^ r4);
        b_share__hpc1_cross_domain_4_order4 <= (b0 ^ rand_0);
        b_share__hpc1_same_shares_4_order1 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_4_order5 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_4_order6 <= (b3 ^ rand_3);
        b_share__hpc1_cross_domain_4_order7 <= (b4 ^ r4);
        b_share__hpc1_cross_domain_4_order8 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_4_order9 <= (b1 ^ rand_1);
        b_share__hpc1_same_shares_4_order2 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_4_order10 <= (b3 ^ rand_3);
        b_share__hpc1_cross_domain_4_order11 <= (b4 ^ r4);
        b_share__hpc1_cross_domain_4_order12 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_4_order13 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_4_order14 <= (b2 ^ rand_2);
        b_share__hpc1_same_shares_4_order3 <= (b3 ^ rand_3);
        b_share__hpc1_cross_domain_4_order15 <= (b4 ^ r4);
        b_share__hpc1_cross_domain_4_order16 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_4_order17 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_4_order18 <= (b2 ^ rand_2);
        b_share__hpc1_cross_domain_4_order19 <= (b3 ^ rand_3);
        b_share__hpc1_same_shares_4_order4 <= (b4 ^ r4);
        c0 <= z327_assgn327;
        c1 <= z335_assgn335;
        c2 <= z343_assgn343;
        c3 <= z351_assgn351;
        c4 <= z359_assgn359;
    end

endmodule

