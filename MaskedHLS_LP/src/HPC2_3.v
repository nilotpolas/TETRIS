module HPC2(
    clk,
    a0,
    a1,
    a2,
    b0,
    b1,
    b2,
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
    input  rand_01;
    input  rand_02;
    input  rand_12;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
//Intermediate values
    wire u00;
    reg temp_hpc2_v_2_order0;
    reg v01;
    wire a_neg_hpc2_w_2_order0;
    reg w01;
    reg w01_reg;
    wire u01;
    reg temp_hpc2_v_2_order1;
    reg v02;
    wire a_neg_hpc2_w_2_order1;
    reg w02;
    reg w02_reg;
    wire u02;
    reg temp_hpc2_v_2_order2;
    reg v10;
    wire a_neg_hpc2_w_2_order2;
    reg w10;
    reg w10_reg;
    wire u10;
    wire u11;
    reg temp_hpc2_v_2_order3;
    reg v12;
    wire a_neg_hpc2_w_2_order3;
    reg w12;
    reg w12_reg;
    wire u12;
    reg temp_hpc2_v_2_order4;
    reg v20;
    wire a_neg_hpc2_w_2_order4;
    reg w20;
    reg w20_reg;
    wire u20;
    reg temp_hpc2_v_2_order5;
    reg v21;
    wire a_neg_hpc2_w_2_order5;
    reg w21;
    reg w21_reg;
    wire u21;
    wire u22;
    wire z145_assgn145;
    reg z145_assgn1450;
    reg z68_assgn68;
    wire t1;
    wire z151_assgn151;
    reg z151_assgn1510;
    reg z71_assgn71;
    wire t2;
    wire t3;
    wire z159_assgn159;
    reg z159_assgn1590;
    reg z77_assgn77;

    assign u00 = (a0 & b0);
    assign a_neg_hpc2_w_2_order0 = !a0;
    assign u01 = (v01 ^ w01_reg);
    assign a_neg_hpc2_w_2_order1 = !a0;
    assign u02 = (v02 ^ w02_reg);
    assign a_neg_hpc2_w_2_order2 = !a1;
    assign u10 = (v10 ^ w10_reg);
    assign u11 = (a1 & b1);
    assign a_neg_hpc2_w_2_order3 = !a1;
    assign u12 = (v12 ^ w12_reg);
    assign a_neg_hpc2_w_2_order4 = !a2;
    assign u20 = (v20 ^ w20_reg);
    assign a_neg_hpc2_w_2_order5 = !a2;
    assign u21 = (v21 ^ w21_reg);
    assign u22 = (a2 & b2);
    assign z145_assgn145 = u00;
    assign t1 = (z68_assgn68 ^ u01);
    assign z151_assgn151 = u11;
    assign t2 = (u10 ^ z71_assgn71);
    assign t3 = (u20 ^ u21);
    assign z159_assgn159 = u22;

    always @(posedge clk) begin
        temp_hpc2_v_2_order0 <= (b1 ^ rand_01);
        v01 <= (temp_hpc2_v_2_order0 & a0);
        w01 <= (a_neg_hpc2_w_2_order0 & rand_01);
        w01_reg <= w01;
        temp_hpc2_v_2_order1 <= (b2 ^ rand_02);
        v02 <= (temp_hpc2_v_2_order1 & a0);
        w02 <= (a_neg_hpc2_w_2_order1 & rand_02);
        w02_reg <= w02;
        temp_hpc2_v_2_order2 <= (b0 ^ rand_01);
        v10 <= (temp_hpc2_v_2_order2 & a1);
        w10 <= (a_neg_hpc2_w_2_order2 & rand_01);
        w10_reg <= w10;
        temp_hpc2_v_2_order3 <= (b2 ^ rand_12);
        v12 <= (temp_hpc2_v_2_order3 & a1);
        w12 <= (a_neg_hpc2_w_2_order3 & rand_12);
        w12_reg <= w12;
        temp_hpc2_v_2_order4 <= (b0 ^ rand_02);
        v20 <= (temp_hpc2_v_2_order4 & a2);
        w20 <= (a_neg_hpc2_w_2_order4 & rand_02);
        w20_reg <= w20;
        temp_hpc2_v_2_order5 <= (b1 ^ rand_12);
        v21 <= (temp_hpc2_v_2_order5 & a2);
        w21 <= (a_neg_hpc2_w_2_order5 & rand_12);
        w21_reg <= w21;
        z145_assgn1450 <= z145_assgn145;
        z68_assgn68 <= z145_assgn1450;
        c0 <= (t1 ^ u02);
        z151_assgn1510 <= z151_assgn151;
        z71_assgn71 <= z151_assgn1510;
        c1 <= (t2 ^ u12);
        z159_assgn1590 <= z159_assgn159;
        z77_assgn77 <= z159_assgn1590;
        c2 <= (t3 ^ z77_assgn77);
    end

endmodule

