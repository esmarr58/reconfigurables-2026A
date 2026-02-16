// full_adder.v
// Sumador completo de 1 bit (Verilog)

module full_adder(
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Cout
);

    wire axb;

    assign axb  = A ^ B;
    assign Sum  = axb ^ Cin;
    assign Cout = (A & B) | (Cin & axb);

endmodule
