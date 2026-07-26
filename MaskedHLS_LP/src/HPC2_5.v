module HPC2(
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
    rand_01,
    rand_02,
    rand_03,
    rand_04,
    rand_12,
    rand_13,
    rand_14,
    rand_23,
    rand_24,
    rand_34,
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
    input  rand_01;
    input  rand_02;
    input  rand_03;
    input  rand_04;
    input  rand_12;
    input  rand_13;
    input  rand_14;
    input  rand_23;
    input  rand_24;
    input  rand_34;
//OUTPUTS
    output reg  c0;
    output reg  c1;
    output reg  c2;
    output reg  c3;
    output reg  c4;
//Intermediate values
    wire u00;
    reg temp_hpc2_v_4_order0;
    reg v01;
    wire a_neg_hpc2_w_4_order0;
    reg w01;
    reg w01_reg;
    wire u01;
    reg temp_hpc2_v_4_order1;
    reg v02;
    wire a_neg_hpc2_w_4_order1;
    reg w02;
    reg w02_reg;
    wire u02;
    reg temp_hpc2_v_4_order2;
    reg v03;
    wire a_neg_hpc2_w_4_order2;
    reg w03;
    reg w03_reg;
    wire u03;
    reg temp_hpc2_v_4_order3;
    reg v04;
    wire a_neg_hpc2_w_4_order3;
    reg w04;
    reg w04_reg;
    wire u04;
    reg temp_hpc2_v_4_order4;
    reg v10;
    wire a_neg_hpc2_w_4_order4;
    reg w10;
    reg w10_reg;
    wire u10;
    wire u11;
    reg temp_hpc2_v_4_order5;
    reg v12;
    wire a_neg_hpc2_w_4_order5;
    reg w12;
    reg w12_reg;
    wire u12;
    reg temp_hpc2_v_4_order6;
    reg v13;
    wire a_neg_hpc2_w_4_order6;
    reg w13;
    reg w13_reg;
    wire u13;
    reg temp_hpc2_v_4_order7;
    reg v14;
    wire a_neg_hpc2_w_4_order7;
    reg w14;
    reg w14_reg;
    wire u14;
    reg temp_hpc2_v_4_order8;
    reg v20;
    wire a_neg_hpc2_w_4_order8;
    reg w20;
    reg w20_reg;
    wire u20;
    reg temp_hpc2_v_4_order9;
    reg v21;
    wire a_neg_hpc2_w_4_order9;
    reg w21;
    reg w21_reg;
    wire u21;
    wire u22;
    reg temp_hpc2_v_4_order10;
    reg v23;
    wire a_neg_hpc2_w_4_order10;
    reg w23;
    reg w23_reg;
    wire u23;
    reg temp_hpc2_v_4_order11;
    reg v24;
    wire a_neg_hpc2_w_4_order11;
    reg w24;
    reg w24_reg;
    wire u24;
    reg temp_hpc2_v_4_order12;
    reg v30;
    wire a_neg_hpc2_w_4_order12;
    reg w30;
    reg w30_reg;
    wire u30;
    reg temp_hpc2_v_4_order13;
    reg v31;
    wire a_neg_hpc2_w_4_order13;
    reg w31;
    reg w31_reg;
    wire u31;
    reg temp_hpc2_v_4_order14;
    reg v32;
    wire a_neg_hpc2_w_4_order14;
    reg w32;
    reg w32_reg;
    wire u32;
    wire u33;
    reg temp_hpc2_v_4_order15;
    reg v34;
    wire a_neg_hpc2_w_4_order15;
    reg w34;
    reg w34_reg;
    wire u34;
    reg temp_hpc2_v_4_order16;
    reg v40;
    wire a_neg_hpc2_w_4_order16;
    reg w40;
    reg w40_reg;
    wire u40;
    reg temp_hpc2_v_4_order17;
    reg v41;
    wire a_neg_hpc2_w_4_order17;
    reg w41;
    reg w41_reg;
    wire u41;
    reg temp_hpc2_v_4_order18;
    reg v42;
    wire a_neg_hpc2_w_4_order18;
    reg w42;
    reg w42_reg;
    wire u42;
    reg temp_hpc2_v_4_order19;
    reg v43;
    wire a_neg_hpc2_w_4_order19;
    reg w43;
    reg w43_reg;
    wire u43;
    wire u44;
    wire z461_assgn461;
    reg z461_assgn4610;
    reg z212_assgn212;
    wire t1;
    wire t2;
    wire t3;
    wire z471_assgn471;
    reg z471_assgn4710;
    reg z219_assgn219;
    wire t4;
    wire t5;
    wire t6;
    wire t7;
    wire z483_assgn483;
    reg z483_assgn4830;
    reg z229_assgn229;
    wire t8;
    wire t9;
    wire t10;
    wire t11;
    wire z495_assgn495;
    reg z495_assgn4950;
    reg z239_assgn239;
    wire t12;
    wire t13;
    wire t14;
    wire t15;
    wire z507_assgn507;
    reg z507_assgn5070;
    reg z249_assgn249;

    assign u00 = (a0 & b0);
    assign a_neg_hpc2_w_4_order0 = !a0;
    assign u01 = (v01 ^ w01_reg);
    assign a_neg_hpc2_w_4_order1 = !a0;
    assign u02 = (v02 ^ w02_reg);
    assign a_neg_hpc2_w_4_order2 = !a0;
    assign u03 = (v03 ^ w03_reg);
    assign a_neg_hpc2_w_4_order3 = !a0;
    assign u04 = (v04 ^ w04_reg);
    assign a_neg_hpc2_w_4_order4 = !a1;
    assign u10 = (v10 ^ w10_reg);
    assign u11 = (a1 & b1);
    assign a_neg_hpc2_w_4_order5 = !a1;
    assign u12 = (v12 ^ w12_reg);
    assign a_neg_hpc2_w_4_order6 = !a1;
    assign u13 = (v13 ^ w13_reg);
    assign a_neg_hpc2_w_4_order7 = !a1;
    assign u14 = (v14 ^ w14_reg);
    assign a_neg_hpc2_w_4_order8 = !a2;
    assign u20 = (v20 ^ w20_reg);
    assign a_neg_hpc2_w_4_order9 = !a2;
    assign u21 = (v21 ^ w21_reg);
    assign u22 = (a2 & b2);
    assign a_neg_hpc2_w_4_order10 = !a2;
    assign u23 = (v23 ^ w23_reg);
    assign a_neg_hpc2_w_4_order11 = !a2;
    assign u24 = (v24 ^ w24_reg);
    assign a_neg_hpc2_w_4_order12 = !a3;
    assign u30 = (v30 ^ w30_reg);
    assign a_neg_hpc2_w_4_order13 = !a3;
    assign u31 = (v31 ^ w31_reg);
    assign a_neg_hpc2_w_4_order14 = !a3;
    assign u32 = (v32 ^ w32_reg);
    assign u33 = (a3 & b3);
    assign a_neg_hpc2_w_4_order15 = !a3;
    assign u34 = (v34 ^ w34_reg);
    assign a_neg_hpc2_w_4_order16 = !a4;
    assign u40 = (v40 ^ w40_reg);
    assign a_neg_hpc2_w_4_order17 = !a4;
    assign u41 = (v41 ^ w41_reg);
    assign a_neg_hpc2_w_4_order18 = !a4;
    assign u42 = (v42 ^ w42_reg);
    assign a_neg_hpc2_w_4_order19 = !a4;
    assign u43 = (v43 ^ w43_reg);
    assign u44 = (a4 & b4);
    assign z461_assgn461 = u00;
    assign t1 = (z212_assgn212 ^ u01);
    assign t2 = (t1 ^ u02);
    assign t3 = (t2 ^ u03);
    assign z471_assgn471 = u11;
    assign t4 = (u10 ^ z219_assgn219);
    assign t5 = (t4 ^ u12);
    assign t6 = (t5 ^ u13);
    assign t7 = (u20 ^ u21);
    assign z483_assgn483 = u22;
    assign t8 = (t7 ^ z229_assgn229);
    assign t9 = (t8 ^ u23);
    assign t10 = (u30 ^ u31);
    assign t11 = (t10 ^ u32);
    assign z495_assgn495 = u33;
    assign t12 = (t11 ^ z239_assgn239);
    assign t13 = (u40 ^ u41);
    assign t14 = (t13 ^ u42);
    assign t15 = (t14 ^ u43);
    assign z507_assgn507 = u44;

    always @(posedge clk) begin
        temp_hpc2_v_4_order0 <= (b1 ^ rand_01);
        v01 <= (temp_hpc2_v_4_order0 & a0);
        w01 <= (a_neg_hpc2_w_4_order0 & rand_01);
        w01_reg <= w01;
        temp_hpc2_v_4_order1 <= (b2 ^ rand_02);
        v02 <= (temp_hpc2_v_4_order1 & a0);
        w02 <= (a_neg_hpc2_w_4_order1 & rand_02);
        w02_reg <= w02;
        temp_hpc2_v_4_order2 <= (b3 ^ rand_03);
        v03 <= (temp_hpc2_v_4_order2 & a0);
        w03 <= (a_neg_hpc2_w_4_order2 & rand_03);
        w03_reg <= w03;
        temp_hpc2_v_4_order3 <= (b4 ^ rand_04);
        v04 <= (temp_hpc2_v_4_order3 & a0);
        w04 <= (a_neg_hpc2_w_4_order3 & rand_04);
        w04_reg <= w04;
        temp_hpc2_v_4_order4 <= (b0 ^ rand_01);
        v10 <= (temp_hpc2_v_4_order4 & a1);
        w10 <= (a_neg_hpc2_w_4_order4 & rand_01);
        w10_reg <= w10;
        temp_hpc2_v_4_order5 <= (b2 ^ rand_12);
        v12 <= (temp_hpc2_v_4_order5 & a1);
        w12 <= (a_neg_hpc2_w_4_order5 & rand_12);
        w12_reg <= w12;
        temp_hpc2_v_4_order6 <= (b3 ^ rand_13);
        v13 <= (temp_hpc2_v_4_order6 & a1);
        w13 <= (a_neg_hpc2_w_4_order6 & rand_13);
        w13_reg <= w13;
        temp_hpc2_v_4_order7 <= (b4 ^ rand_14);
        v14 <= (temp_hpc2_v_4_order7 & a1);
        w14 <= (a_neg_hpc2_w_4_order7 & rand_14);
        w14_reg <= w14;
        temp_hpc2_v_4_order8 <= (b0 ^ rand_02);
        v20 <= (temp_hpc2_v_4_order8 & a2);
        w20 <= (a_neg_hpc2_w_4_order8 & rand_02);
        w20_reg <= w20;
        temp_hpc2_v_4_order9 <= (b1 ^ rand_12);
        v21 <= (temp_hpc2_v_4_order9 & a2);
        w21 <= (a_neg_hpc2_w_4_order9 & rand_12);
        w21_reg <= w21;
        temp_hpc2_v_4_order10 <= (b3 ^ rand_23);
        v23 <= (temp_hpc2_v_4_order10 & a2);
        w23 <= (a_neg_hpc2_w_4_order10 & rand_23);
        w23_reg <= w23;
        temp_hpc2_v_4_order11 <= (b4 ^ rand_24);
        v24 <= (temp_hpc2_v_4_order11 & a2);
        w24 <= (a_neg_hpc2_w_4_order11 & rand_24);
        w24_reg <= w24;
        temp_hpc2_v_4_order12 <= (b0 ^ rand_03);
        v30 <= (temp_hpc2_v_4_order12 & a3);
        w30 <= (a_neg_hpc2_w_4_order12 & rand_03);
        w30_reg <= w30;
        temp_hpc2_v_4_order13 <= (b1 ^ rand_13);
        v31 <= (temp_hpc2_v_4_order13 & a3);
        w31 <= (a_neg_hpc2_w_4_order13 & rand_13);
        w31_reg <= w31;
        temp_hpc2_v_4_order14 <= (b2 ^ rand_23);
        v32 <= (temp_hpc2_v_4_order14 & a3);
        w32 <= (a_neg_hpc2_w_4_order14 & rand_23);
        w32_reg <= w32;
        temp_hpc2_v_4_order15 <= (b4 ^ rand_34);
        v34 <= (temp_hpc2_v_4_order15 & a3);
        w34 <= (a_neg_hpc2_w_4_order15 & rand_34);
        w34_reg <= w34;
        temp_hpc2_v_4_order16 <= (b0 ^ rand_04);
        v40 <= (temp_hpc2_v_4_order16 & a4);
        w40 <= (a_neg_hpc2_w_4_order16 & rand_04);
        w40_reg <= w40;
        temp_hpc2_v_4_order17 <= (b1 ^ rand_14);
        v41 <= (temp_hpc2_v_4_order17 & a4);
        w41 <= (a_neg_hpc2_w_4_order17 & rand_14);
        w41_reg <= w41;
        temp_hpc2_v_4_order18 <= (b2 ^ rand_24);
        v42 <= (temp_hpc2_v_4_order18 & a4);
        w42 <= (a_neg_hpc2_w_4_order18 & rand_24);
        w42_reg <= w42;
        temp_hpc2_v_4_order19 <= (b3 ^ rand_34);
        v43 <= (temp_hpc2_v_4_order19 & a4);
        w43 <= (a_neg_hpc2_w_4_order19 & rand_34);
        w43_reg <= w43;
        z461_assgn4610 <= z461_assgn461;
        z212_assgn212 <= z461_assgn4610;
        c0 <= (t3 ^ u04);
        z471_assgn4710 <= z471_assgn471;
        z219_assgn219 <= z471_assgn4710;
        c1 <= (t6 ^ u14);
        z483_assgn4830 <= z483_assgn483;
        z229_assgn229 <= z483_assgn4830;
        c2 <= (t9 ^ u24);
        z495_assgn4950 <= z495_assgn495;
        z239_assgn239 <= z495_assgn4950;
        c3 <= (t12 ^ u34);
        z507_assgn5070 <= z507_assgn507;
        z249_assgn249 <= z507_assgn5070;
        c4 <= (t15 ^ z249_assgn249);
    end

endmodule

