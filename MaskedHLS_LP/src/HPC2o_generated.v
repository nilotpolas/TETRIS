module HPC2o(
    clk,
    a0,
    a1,
    b0,
    b1,
    w0,
    w1,
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
    input  [7:0] w0;
    input  [7:0] w1;
    input  [7:0] rand_01;
//OUTPUTS
    output reg  [7:0] c0;
    output reg  [7:0] c1;
//Intermediate values
    wire [7:0] temp_ab_hpc2o_first_half_1_order0;
    wire [7:0] a_neg_hpc2o_first_half_1_order0;
    wire [7:0] temp_ar_hpc2o_first_half_1_order0;
    wire [7:0] xor_step1_hpc2o_first_half_1_order0;
    wire [7:0] xor_step2_hpc2o_first_half_1_order0;
    reg [7:0] w01;
    wire [7:0] xor_br_hpc2o_v_1_order0;
    reg [7:0] temp_hpc2o_v_1_order0;
    wire [7:0] and_ta_hpc2o_v_1_order0;
    reg [7:0] v01;
    reg [7:0] w01_reg;
    wire [7:0] u01;
    wire [7:0] temp_ab_hpc2o_first_half_1_order1;
    wire [7:0] a_neg_hpc2o_first_half_1_order1;
    wire [7:0] temp_ar_hpc2o_first_half_1_order1;
    wire [7:0] xor_step1_hpc2o_first_half_1_order1;
    wire [7:0] xor_step2_hpc2o_first_half_1_order1;
    reg [7:0] w10;
    wire [7:0] xor_br_hpc2o_v_1_order1;
    reg [7:0] temp_hpc2o_v_1_order1;
    wire [7:0] and_ta_hpc2o_v_1_order1;
    reg [7:0] v10;
    reg [7:0] w10_reg;
    wire [7:0] u10;

    assign temp_ab_hpc2o_first_half_1_order0 = (a0 & b0);
    assign a_neg_hpc2o_first_half_1_order0 = !a0;
    assign temp_ar_hpc2o_first_half_1_order0 = (a_neg_hpc2o_first_half_1_order0 & rand_01);
    assign xor_step1_hpc2o_first_half_1_order0 = (w0 ^ temp_ab_hpc2o_first_half_1_order0);
    assign xor_step2_hpc2o_first_half_1_order0 = (xor_step1_hpc2o_first_half_1_order0 ^ temp_ar_hpc2o_first_half_1_order0);
    assign xor_br_hpc2o_v_1_order0 = (b1 ^ rand_01);
    assign and_ta_hpc2o_v_1_order0 = (temp_hpc2o_v_1_order0 & a0);
    assign u01 = (v01 ^ w01_reg);
    assign temp_ab_hpc2o_first_half_1_order1 = (a1 & b1);
    assign a_neg_hpc2o_first_half_1_order1 = !a1;
    assign temp_ar_hpc2o_first_half_1_order1 = (a_neg_hpc2o_first_half_1_order1 & rand_01);
    assign xor_step1_hpc2o_first_half_1_order1 = (w1 ^ temp_ab_hpc2o_first_half_1_order1);
    assign xor_step2_hpc2o_first_half_1_order1 = (xor_step1_hpc2o_first_half_1_order1 ^ temp_ar_hpc2o_first_half_1_order1);
    assign xor_br_hpc2o_v_1_order1 = (b0 ^ rand_01);
    assign and_ta_hpc2o_v_1_order1 = (temp_hpc2o_v_1_order1 & a1);
    assign u10 = (v10 ^ w10_reg);

    always @(posedge clk) begin
        w01 <= xor_step2_hpc2o_first_half_1_order0;
        temp_hpc2o_v_1_order0 <= xor_br_hpc2o_v_1_order0;
        v01 <= and_ta_hpc2o_v_1_order0;
        w01_reg <= w01;
        w10 <= xor_step2_hpc2o_first_half_1_order1;
        temp_hpc2o_v_1_order1 <= xor_br_hpc2o_v_1_order1;
        v10 <= and_ta_hpc2o_v_1_order1;
        w10_reg <= w10;
        c0 <= u01;
        c1 <= u10;
    end

endmodule

