module Comar(
    clk,
    a0,
    a1,
    b0,
    b1,
    r0,
    r1,
    r_0,
    r_1,
    r_2,
    r_3,
    c0,
    c1
);
//INPUTS
    input clk;
    input  [7:0] a0;
    input  [7:0] a1;
    input  [7:0] b0;
    input  [7:0] b1;
    input  [7:0] r0;
    input  [7:0] r1;
    input  [7:0] r_0;
    input  [7:0] r_1;
    input  [7:0] r_2;
    input  [7:0] r_3;
//OUTPUTS
    output reg  [7:0] c0;
    output reg  [7:0] c1;
//Intermediate values
    reg [7:0] a_0;
    reg [7:0] a_1;
    reg [7:0] b_0;
    reg [7:0] b_1;
    wire [7:0] t0;
    reg [7:0] c_0;
    wire [7:0] t1;
    reg [7:0] c_1;
    wire [7:0] t2;
    reg [7:0] c_2;
    wire [7:0] t3;
    reg [7:0] c_3;
    wire [7:0] t4;
    wire [7:0] t5;
    wire [7:0] t6;
    wire [7:0] t7;
    wire [7:0] z71_assgn71;
    reg [7:0] z71_assgn710;

    assign t0 = (a_0 & b_0);
    assign t1 = (a_1 & b_0);
    assign t2 = (a_0 & b_1);
    assign t3 = (a_1 & b_1);
    assign t4 = (c_0 ^ c_1);
    assign t5 = (t4 ^ c_2);
    assign t6 = (r_0 ^ r_1);
    assign t7 = (t6 ^ r_2);
    assign z71_assgn71 = (t7 ^ r_3);

    always @(posedge clk) begin
        a_0 <= (a0 ^ r0);
        a_1 <= (a1 ^ r0);
        b_0 <= (b0 ^ r1);
        b_1 <= (b1 ^ r1);
        c_0 <= (t0 ^ r_0);
        c_1 <= (t1 ^ r_1);
        c_2 <= (t2 ^ r_2);
        c_3 <= (t3 ^ r_3);
        c0 <= (t5 ^ c_3);
        z71_assgn710 <= z71_assgn71;
        c1 <= z71_assgn710;
    end

endmodule

