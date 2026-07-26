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
    input  [7:0] a0;
    input  [7:0] a1;
    input  [7:0] b0;
    input  [7:0] b1;
    input  [7:0] rand_0;
    input  [7:0] prand_01;
//OUTPUTS
    output reg  [7:0] c0;
    output reg  [7:0] c1;
//Intermediate values
    wire [7:0] r1;
    reg [7:0] b_share__hpc1_same_shares_1_order0;
    wire [7:0] v00;
    reg [7:0] b_share__hpc1_cross_domain_1_order0;
    wire [7:0] a_and_b_hpc1_cross_domain_1_order0;
    wire [7:0] v01;
    reg [7:0] b_share__hpc1_cross_domain_1_order1;
    wire [7:0] a_and_b_hpc1_cross_domain_1_order1;
    wire [7:0] v10;
    reg [7:0] b_share__hpc1_same_shares_1_order1;
    wire [7:0] v11;
    wire [7:0] z45_assgn45;
    wire [7:0] z47_assgn47;

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

