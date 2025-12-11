module reversible_full_adder(
  input A,
  input B,
  input Cin,
  output Sum,
  output Cout
);
  wire P, Q;

  hng_gate hng(
    .A(A),
    .B(B),
    .Cin(Cin),
    .D(1'b0),
    .P(P),      // garbage output
    .Q(Q),      // garbage output
    .Sum(Sum),
    .Cout(Cout)
  );
endmodule
