module HPC1(
    clk,
    a0,
    a1,
    b0,
    b1,
    rand_0,
    prand_01,
    c0,
    c1
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  b0;
    input  b1;
    input  rand_0;
    input  prand_01;
//OUTPUTS
    output reg  c0;
    output reg  c1;
//Intermediate values
    wire r1;
    reg b_share__hpc1_same_shares_1_order0;
    wire v00;
    reg b_share__hpc1_cross_domain_1_order0;
    wire a_and_b_hpc1_cross_domain_1_order0;
    wire v01;
    reg b_share__hpc1_cross_domain_1_order1;
    wire a_and_b_hpc1_cross_domain_1_order1;
    wire v10;
    reg b_share__hpc1_same_shares_1_order1;
    wire v11;
    wire z45_assgn45;
    wire z47_assgn47;

    assign r1 = rand_0;
    assign v00 = (a0 & b_share__hpc1_same_shares_1_order0);
    assign a_and_b_hpc1_cross_domain_1_order0 = (a0 & b_share__hpc1_cross_domain_1_order0);
    assign v01 = (a_and_b_hpc1_cross_domain_1_order0 ^ prand_01);
    assign a_and_b_hpc1_cross_domain_1_order1 = (a1 & b_share__hpc1_cross_domain_1_order1);
    assign v10 = (a_and_b_hpc1_cross_domain_1_order1 ^ prand_01);
    assign v11 = (a1 & b_share__hpc1_same_shares_1_order1);
    assign z45_assgn45 = (v00 ^ v01);
    assign z47_assgn47 = (v10 ^ v11);

    always @(posedge clk) begin
        b_share__hpc1_same_shares_1_order0 <= (b0 ^ rand_0);
        b_share__hpc1_cross_domain_1_order0 <= (b1 ^ r1);
        b_share__hpc1_cross_domain_1_order1 <= (b0 ^ rand_0);
        b_share__hpc1_same_shares_1_order1 <= (b1 ^ r1);
        c0 <= z45_assgn45;
        c1 <= z47_assgn47;
    end

endmodule

