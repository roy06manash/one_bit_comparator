`timescale 1ns/1ps

module tb_one_bit_comparator;
    reg A;
    reg B;
    wire o1;
    wire signed [7:0] o2;
    wire o3;

    one_bit_comparator dut (
        .A(A),
        .B(B),
        .o1(o1),
        .o2(o2),
        .o3(o3)
    );

    initial begin
        $dumpfile("comp.vcd");
        $dumpvars(0, tb_one_bit_comparator);

        $display("Time | A B | o1(A>B) o2(A==B) o3(A<B)");
        $display("-------------------------------------------------");

        {A, B} = 2'b00; #5;
        $display("%4dns | %b %b |   %b       %0d       %b", $time, A, B, o1, o2, o3);
        {A, B} = 2'b01; #5;
        $display("%4dns | %b %b |   %b       %0d       %b", $time, A, B, o1, o2, o3);
        {A, B} = 2'b10; #5;
        $display("%4dns | %b %b |   %b       %0d       %b", $time, A, B, o1, o2, o3);
        {A, B} = 2'b11; #5;
        $display("%4dns | %b %b |   %b       %0d       %b", $time, A, B, o1, o2, o3);

        $finish;
    end
endmodule
