module HPC2(
    clk,
    a0,
    a1,
    b0,
    b1,
    rand_01,
    c0,
    c1
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  b0;
    input  b1;
    input  rand_01;
//OUTPUTS
    output reg  c0;
    output reg  c1;
//Intermediate values
    wire u00;
    reg temp_hpc2_v_1_order0;
    reg v01;
    wire a_neg_hpc2_w_1_order0;
    reg w01;
    reg w01_reg;
    wire u01;
    reg temp_hpc2_v_1_order1;
    reg v10;
    wire a_neg_hpc2_w_1_order1;
    reg w10;
    reg w10_reg;
    wire u10;
    wire u11;
    wire z53_assgn53;
    reg z53_assgn530;
    reg z26_assgn26;
    wire z57_assgn57;
    reg z57_assgn570;
    reg z27_assgn27;

    assign u00 = (a0 & b0);
    assign a_neg_hpc2_w_1_order0 = !a0;
    assign u01 = (v01 ^ w01_reg);
    assign a_neg_hpc2_w_1_order1 = !a1;
    assign u10 = (v10 ^ w10_reg);
    assign u11 = (a1 & b1);
    assign z53_assgn53 = u00;
    assign z57_assgn57 = u11;

    always @(posedge clk) begin
        temp_hpc2_v_1_order0 <= (b1 ^ rand_01);
        v01 <= (temp_hpc2_v_1_order0 & a0);
        w01 <= (a_neg_hpc2_w_1_order0 & rand_01);
        w01_reg <= w01;
        temp_hpc2_v_1_order1 <= (b0 ^ rand_01);
        v10 <= (temp_hpc2_v_1_order1 & a1);
        w10 <= (a_neg_hpc2_w_1_order1 & rand_01);
        w10_reg <= w10;
        z53_assgn530 <= z53_assgn53;
        z26_assgn26 <= z53_assgn530;
        c0 <= (z26_assgn26 ^ u01);
        z57_assgn570 <= z57_assgn57;
        z27_assgn27 <= z57_assgn570;
        c1 <= (u10 ^ z27_assgn27);
    end

endmodule

