module one_bit_comparator (
    input  wire A,
    input  wire B,
    output wire o1,
    output wire signed [7:0] o2,
    output wire o3
);
    assign o1 = A & ~B;
    assign o2 = (A == B) ? -8'sd1 : 8'sd0;
    assign o3 = ~A & B;
endmodule
