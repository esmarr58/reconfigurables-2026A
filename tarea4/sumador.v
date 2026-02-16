// full_adder.sv
// Sumador completo de 1 bit

module full_adder(
    input  logic A,
    input  logic B,
    input  logic Cin,
    output logic Sum,
    output logic Cout
);

    logic axb;

    assign axb  = A ^ B;
    assign Sum  = axb ^ Cin;
    assign Cout = (A & B) | (Cin & axb);

endmodule
