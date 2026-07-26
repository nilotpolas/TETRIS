module HPC2(
    clk,
    a0,
    a1,
    a2,
    a3,
    b0,
    b1,
    b2,
    b3,
    rand_01,
    rand_02,
    rand_03,
    rand_12,
    rand_13,
    rand_23,
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
    input  rand_01;
    input  rand_02;
    input  rand_03;
    input  rand_12;
    input  rand_13;
    input  rand_23;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
//Intermediate values
    wire u00;
    reg temp_hpc2_v_3_order0;
    reg v01;
    wire a_neg_hpc2_w_3_order0;
    reg w01;
    reg w01_reg;
    wire u01;
    reg temp_hpc2_v_3_order1;
    reg v02;
    wire a_neg_hpc2_w_3_order1;
    reg w02;
    reg w02_reg;
    wire u02;
    reg temp_hpc2_v_3_order2;
    reg v03;
    wire a_neg_hpc2_w_3_order2;
    reg w03;
    reg w03_reg;
    wire u03;
    reg temp_hpc2_v_3_order3;
    reg v10;
    wire a_neg_hpc2_w_3_order3;
    reg w10;
    reg w10_reg;
    wire u10;
    wire u11;
    reg temp_hpc2_v_3_order4;
    reg v12;
    wire a_neg_hpc2_w_3_order4;
    reg w12;
    reg w12_reg;
    wire u12;
    reg temp_hpc2_v_3_order5;
    reg v13;
    wire a_neg_hpc2_w_3_order5;
    reg w13;
    reg w13_reg;
    wire u13;
    reg temp_hpc2_v_3_order6;
    reg v20;
    wire a_neg_hpc2_w_3_order6;
    reg w20;
    reg w20_reg;
    wire u20;
    reg temp_hpc2_v_3_order7;
    reg v21;
    wire a_neg_hpc2_w_3_order7;
    reg w21;
    reg w21_reg;
    wire u21;
    wire u22;
    reg temp_hpc2_v_3_order8;
    reg v23;
    wire a_neg_hpc2_w_3_order8;
    reg w23;
    reg w23_reg;
    wire u23;
    reg temp_hpc2_v_3_order9;
    reg v30;
    wire a_neg_hpc2_w_3_order9;
    reg w30;
    reg w30_reg;
    wire u30;
    reg temp_hpc2_v_3_order10;
    reg v31;
    wire a_neg_hpc2_w_3_order10;
    reg w31;
    reg w31_reg;
    wire u31;
    reg temp_hpc2_v_3_order11;
    reg v32;
    wire a_neg_hpc2_w_3_order11;
    reg w32;
    reg w32_reg;
    wire u32;
    wire u33;
    wire z281_assgn281;
    reg z281_assgn2810;
    reg z130_assgn130;
    wire t1;
    wire t2;
    wire z289_assgn289;
    reg z289_assgn2890;
    reg z135_assgn135;
    wire t3;
    wire t4;
    wire t5;
    wire z299_assgn299;
    reg z299_assgn2990;
    reg z143_assgn143;
    wire t6;
    wire t7;
    wire t8;
    wire z309_assgn309;
    reg z309_assgn3090;
    reg z151_assgn151;

    assign u00 = (a0 & b0);
    assign a_neg_hpc2_w_3_order0 = !a0;
    assign u01 = (v01 ^ w01_reg);
    assign a_neg_hpc2_w_3_order1 = !a0;
    assign u02 = (v02 ^ w02_reg);
    assign a_neg_hpc2_w_3_order2 = !a0;
    assign u03 = (v03 ^ w03_reg);
    assign a_neg_hpc2_w_3_order3 = !a1;
    assign u10 = (v10 ^ w10_reg);
    assign u11 = (a1 & b1);
    assign a_neg_hpc2_w_3_order4 = !a1;
    assign u12 = (v12 ^ w12_reg);
    assign a_neg_hpc2_w_3_order5 = !a1;
    assign u13 = (v13 ^ w13_reg);
    assign a_neg_hpc2_w_3_order6 = !a2;
    assign u20 = (v20 ^ w20_reg);
    assign a_neg_hpc2_w_3_order7 = !a2;
    assign u21 = (v21 ^ w21_reg);
    assign u22 = (a2 & b2);
    assign a_neg_hpc2_w_3_order8 = !a2;
    assign u23 = (v23 ^ w23_reg);
    assign a_neg_hpc2_w_3_order9 = !a3;
    assign u30 = (v30 ^ w30_reg);
    assign a_neg_hpc2_w_3_order10 = !a3;
    assign u31 = (v31 ^ w31_reg);
    assign a_neg_hpc2_w_3_order11 = !a3;
    assign u32 = (v32 ^ w32_reg);
    assign u33 = (a3 & b3);
    assign z281_assgn281 = u00;
    assign t1 = (z130_assgn130 ^ u01);
    assign t2 = (t1 ^ u02);
    assign z289_assgn289 = u11;
    assign t3 = (u10 ^ z135_assgn135);
    assign t4 = (t3 ^ u12);
    assign t5 = (u20 ^ u21);
    assign z299_assgn299 = u22;
    assign t6 = (t5 ^ z143_assgn143);
    assign t7 = (u30 ^ u31);
    assign t8 = (t7 ^ u32);
    assign z309_assgn309 = u33;

    always @(posedge clk) begin
        temp_hpc2_v_3_order0 <= (b1 ^ rand_01);
        v01 <= (temp_hpc2_v_3_order0 & a0);
        w01 <= (a_neg_hpc2_w_3_order0 & rand_01);
        w01_reg <= w01;
        temp_hpc2_v_3_order1 <= (b2 ^ rand_02);
        v02 <= (temp_hpc2_v_3_order1 & a0);
        w02 <= (a_neg_hpc2_w_3_order1 & rand_02);
        w02_reg <= w02;
        temp_hpc2_v_3_order2 <= (b3 ^ rand_03);
        v03 <= (temp_hpc2_v_3_order2 & a0);
        w03 <= (a_neg_hpc2_w_3_order2 & rand_03);
        w03_reg <= w03;
        temp_hpc2_v_3_order3 <= (b0 ^ rand_01);
        v10 <= (temp_hpc2_v_3_order3 & a1);
        w10 <= (a_neg_hpc2_w_3_order3 & rand_01);
        w10_reg <= w10;
        temp_hpc2_v_3_order4 <= (b2 ^ rand_12);
        v12 <= (temp_hpc2_v_3_order4 & a1);
        w12 <= (a_neg_hpc2_w_3_order4 & rand_12);
        w12_reg <= w12;
        temp_hpc2_v_3_order5 <= (b3 ^ rand_13);
        v13 <= (temp_hpc2_v_3_order5 & a1);
        w13 <= (a_neg_hpc2_w_3_order5 & rand_13);
        w13_reg <= w13;
        temp_hpc2_v_3_order6 <= (b0 ^ rand_02);
        v20 <= (temp_hpc2_v_3_order6 & a2);
        w20 <= (a_neg_hpc2_w_3_order6 & rand_02);
        w20_reg <= w20;
        temp_hpc2_v_3_order7 <= (b1 ^ rand_12);
        v21 <= (temp_hpc2_v_3_order7 & a2);
        w21 <= (a_neg_hpc2_w_3_order7 & rand_12);
        w21_reg <= w21;
        temp_hpc2_v_3_order8 <= (b3 ^ rand_23);
        v23 <= (temp_hpc2_v_3_order8 & a2);
        w23 <= (a_neg_hpc2_w_3_order8 & rand_23);
        w23_reg <= w23;
        temp_hpc2_v_3_order9 <= (b0 ^ rand_03);
        v30 <= (temp_hpc2_v_3_order9 & a3);
        w30 <= (a_neg_hpc2_w_3_order9 & rand_03);
        w30_reg <= w30;
        temp_hpc2_v_3_order10 <= (b1 ^ rand_13);
        v31 <= (temp_hpc2_v_3_order10 & a3);
        w31 <= (a_neg_hpc2_w_3_order10 & rand_13);
        w31_reg <= w31;
        temp_hpc2_v_3_order11 <= (b2 ^ rand_23);
        v32 <= (temp_hpc2_v_3_order11 & a3);
        w32 <= (a_neg_hpc2_w_3_order11 & rand_23);
        w32_reg <= w32;
        z281_assgn2810 <= z281_assgn281;
        z130_assgn130 <= z281_assgn2810;
        c0 <= (t2 ^ u03);
        z289_assgn2890 <= z289_assgn289;
        z135_assgn135 <= z289_assgn2890;
        c1 <= (t4 ^ u13);
        z299_assgn2990 <= z299_assgn299;
        z143_assgn143 <= z299_assgn2990;
        c2 <= (t6 ^ u23);
        z309_assgn3090 <= z309_assgn309;
        z151_assgn151 <= z309_assgn3090;
        c3 <= (t8 ^ z151_assgn151);
    end

endmodule

