module Domand(
    clk,
    a0,
    a1,
    b0,
    b1,
    r01,
    c0,
    c1
);
//INPUTS
    input clk;
    input  [7:0] a0;
    input  [7:0] a1;
    input  [7:0] b0;
    input  [7:0] b1;
    input  [7:0] r01;
//OUTPUTS
    output reg  [7:0] c0;
    output reg  [7:0] c1;
//Intermediate values
    reg [7:0] t0;
    wire [7:0] t1;
    wire [7:0] i0;
    wire [7:0] t2;
    wire [7:0] i1;
    wire [7:0] t3;
    reg [7:0] i0_reg;
    reg [7:0] t3_reg;
    reg [7:0] i1_reg;

    assign t1 = (a0 & b1);
    assign i0 = (t1 ^ r01);
    assign t2 = (a1 & b0);
    assign i1 = (t2 ^ r01);
    assign t3 = (a1 & b1);

    always @(posedge clk) begin
        t0 <= (a0 & b0);
        i0_reg <= i0;
        t3_reg <= t3;
        c0 <= (i0_reg ^ t3_reg);
        i1_reg <= i1;
        c1 <= (i1_reg ^ t3_reg);
    end

endmodule

