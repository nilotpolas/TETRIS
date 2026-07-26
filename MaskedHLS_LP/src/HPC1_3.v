module HPC1(
    clk,
    a0,
    a1,
    a2,
    b0,
    b1,
    b2,
    rand_0,
    rand_1,
    prand_01,
    prand_02,
    prand_12,
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
    input  rand_0;
    input  rand_1;
    input  prand_01;
    input  prand_02;
    input  prand_12;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
//Intermediate values
    wire r2;
    reg b_share__hpc1_same_shares_2_order0;
    wire v00;
    reg b_share__hpc1_cross_domain_2_order0;
    wire a_and_b_hpc1_cross_domain_2_order0;
    wire v01;
    reg b_share__hpc1_cross_domain_2_order1;
    wire a_and_b_hpc1_cross_domain_2_order1;
    wire v02;
    reg b_share__hpc1_cross_domain_2_order2;
    wire a_and_b_hpc1_cross_domain_2_order2;
    wire v10;
    reg b_share__hpc1_same_shares_2_order1;
    wire v11;
    reg b_share__hpc1_cross_domain_2_order3;
    wire a_and_b_hpc1_cross_domain_2_order3;
    wire v12;
    reg b_share__hpc1_cross_domain_2_order4;
    wire a_and_b_hpc1_cross_domain_2_order4;
    wire v20;
    reg b_share__hpc1_cross_domain_2_order5;
    wire a_and_b_hpc1_cross_domain_2_order5;
    wire v21;
    reg b_share__hpc1_same_shares_2_order2;
    wire v22;
    wire t0;
    wire z111_assgn111;
    wire t1;
    wire z115_assgn115;
    wire t2;
    wire z119_assgn119;

    assign r2 = (rand_0 ^ rand_1);
    assign v00 = (a0 & b_share__hpc1_same_shares_2_order0);
    assign a_and_b_hpc1_cross_domain_2_order0 = (a0 & b_share__hpc1_cross_domain_2_order0);
    assign v01 = (a_and_b_hpc1_cross_domain_2_order0 ^ prand_01);
    assign a_and_b_hpc1_cross_domain_2_order1 = (a0 & b_share__hpc1_cross_domain_2_order1);
    assign v02 = (a_and_b_hpc1_cross_domain_2_order1 ^ prand_02);
    assign a_and_b_hpc1_cross_domain_2_order2 = (a1 & b_share__hpc1_cross_domain_2_order2);
    assign v10 = (a_and_b_hpc1_cross_domain_2_order2 ^ prand_01);
    assign v11 = (a1 & b_share__hpc1_same_shares_2_order1);
    assign a_and_b_hpc1_cross_domain_2_order3 = (a1 & b_share__hpc1_cross_domain_2_order3);
    assign v12 = (a_and_b_hpc1_cross_domain_2_order3 ^ prand_12);
    assign a_and_b_hpc1_cross_domain_2_order4 = (a2 & b_share__hpc1_cross_domain_2_order4);
    assign v20 = (a_and_b_hpc1_cross_domain_2_order4 ^ prand_02);
    assign a_and_b_hpc1_cross_domain_2_order5 = (a2 & b_share__hpc1_cross_domain_2_order5);
    assign v21 = (a_and_b_hpc1_cross_domain_2_order5 ^ prand_12);
    assign v22 = (a2 & b_share__hpc1_same_shares_2_order2);
    assign t0 = (v00 ^ v01);
    assign z111_assgn111 = (t0 ^ v02);
    assign t1 = (v10 ^ v11);
    assign z115_assgn115 = (t1 ^ v12);
    assign t2 = (v20 ^ v21);
    assign z119_assgn119 = (t2 ^ v22);

    always @(posedge clk) begin
        b_share__hpc1_same_shares_2_order0 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_2_order0 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_2_order1 <= (b2 ^ r2);
        b_share__hpc1_cross_domain_2_order2 <= (b0 ^ rand_0);
        b_share__hpc1_same_shares_2_order1 <= (b1 ^ rand_1);
        b_share__hpc1_cross_domain_2_order3 <= (b2 ^ r2);
        b_share__hpc1_cross_domain_2_order4 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_2_order5 <= (b1 ^ rand_1);
        b_share__hpc1_same_shares_2_order2 <= (b2 ^ r2);
        c0 <= z111_assgn111;
        c1 <= z115_assgn115;
        c2 <= z119_assgn119;
    end

endmodule

