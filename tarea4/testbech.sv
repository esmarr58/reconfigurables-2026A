// tb_full_adder.v
`timescale 1ns/1ps

module tb_full_adder;

    reg A;
    reg B;
    reg Cin;
    wire Sum;
    wire Cout;

    integer i;

    // Instancia del DUT
    full_adder dut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Estímulos
    initial begin

        $display(" A B Cin | Sum Cout ");
        $display("----------------------");

        for (i = 0; i < 8; i = i + 1) begin
            {A,B,Cin} = i;
            #10;
            $display(" %0d %0d  %0d  |  %0d    %0d", A,B,Cin,Sum,Cout);
        end

        #10;
        $finish;
    end

endmodule
