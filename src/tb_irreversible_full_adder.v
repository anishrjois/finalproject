module tb_irreversible_full_adder;
  reg A, B, Cin;
  wire Sum, Cout;

  irreversible_full_adder uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

  integer i;
  initial begin
    $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A,B,Cin,Sum,Cout);
    for (i=0; i<8; i=i+1) begin
      {A,B,Cin} = i[2:0];
      #10;
    end
    $finish;
  end
endmodule
