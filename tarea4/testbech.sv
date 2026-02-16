// tb_full_adder.sv
`timescale 1ns/1ps

module tb_full_adder;

    logic A;
    logic B;
    logic Cin;
    logic Sum;
    logic Cout;

    // Instancia del DUT (Device Under Test)
    full_adder dut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Generador de estímulos
    initial begin

        $display(" A B Cin | Sum Cout ");
        $display("----------------------");

        for (int i = 0; i < 8; i++) begin
            {A,B,Cin} = i;
            #10;
            $display(" %0d %0d  %0d  |  %0d    %0d", A,B,Cin,Sum,Cout);
        end

        #10;
        $finish;
    end

endmodule
