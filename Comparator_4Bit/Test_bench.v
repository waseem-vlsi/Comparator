module Comparator_4Bit_tb();
reg [3:0]A,B;
wire LT,GT,EQ;
Comparator_4Bit DUT(.a(A),.b(B),.LT(LT),.EQ(EQ),.GT(GT));
initial 
begin 
A = 4'b1100;
B = 4'b0011;
#5 A = 4'b1011; B = 4'b1111;
#5 A = 4'b1111; B = 4'b1111;
#5 A = 4'b1111; B = 4'b1011;
#5 $finish;
end
endmodule
