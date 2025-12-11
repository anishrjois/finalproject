
module reversible_full_subtractor(
  input A,
  input B,
  input Bin,
  output Diff,
  output Bout
);
  wire xor_ab, P1, Q1;
  wire P2, Q2, R2;

  
  feynman_gate fg(.A(A), .B(B), .P(P1), .Q(xor_ab));
  hng_gate hng(.A(A), .B(B), .Cin(Bin), .D(1'b0), .P(P2), .Q(Q2), .Sum(Diff), .Cout());
  fredkin_gate fred(.A(Bin), .B(A), .C(B), .P(), .Q(), .R(Bout));

  
endmodule
