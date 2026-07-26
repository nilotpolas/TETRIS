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
    input  [7:0] a0;
    input  [7:0] a1;
    input  [7:0] b0;
    input  [7:0] b1;
    input  [7:0] rand_01;
//OUTPUTS
    output reg  [7:0] c0;
    output reg  [7:0] c1;
//Intermediate values
    wire [7:0] u00;
    reg [7:0] temp_hpc2_v_1_order0;
    reg [7:0] v01;
    wire [7:0] a_neg_hpc2_w_1_order0;
    reg [7:0] w01;
    reg [7:0] w01_reg;
    wire [7:0] u01;
    reg [7:0] temp_hpc2_v_1_order1;
    reg [7:0] v10;
    wire [7:0] a_neg_hpc2_w_1_order1;
    reg [7:0] w10;
    reg [7:0] w10_reg;
    wire [7:0] u10;
    wire [7:0] u11;
    wire [7:0] z53_assgn53;
    reg [7:0] z53_assgn530;
    reg [7:0] z26_assgn26;
    wire [7:0] z57_assgn57;
    reg [7:0] z57_assgn570;
    reg [7:0] z27_assgn27;

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

