module tb_reversible_full_subtractor;
  reg A, B, Bin;
  wire Diff, Bout;

  reversible_full_subtractor uut(.A(A), .B(B), .Bin(Bin), .Diff(Diff), .Bout(Bout));

  integer i;
  initial begin
    $monitor("A=%b B=%b Bin=%b | Diff=%b Bout=%b", A,B,Bin,Diff,Bout);
    for (i=0; i<8; i=i+1) begin
      {A,B,Bin} = i[2:0];
      #10;
    end
    $finish;
  end
endmodule
