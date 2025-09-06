`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT jammu
// Engineer: WASEEM
// Create Date: 07.09.2025 02:49:38
// Module Name: Comparator_4Bit
//////////////////////////////////////////////////////////////////////////////////

module comparator_1Bit(
input A,B,
output Lt,Gt,Eq);

assign Lt = (~A)&B;
assign Gt = A&(~B);
assign Eq = ~(A^B);
endmodule

module Comparator_4Bit(
input [3:0]a,b,
output LT,GT,EQ);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24;
wire lt1,gt1,eq1;
assign lt1 = 1'b0, gt1 = 1'b0, eq1 = 1'b1;
comparator_1Bit A1(.A(a[3]), .B(b[3]), .Lt(w1), .Eq(w2), .Gt(w3));
comparator_1Bit A2(.A(a[2]), .B(b[2]), .Lt(w4), .Eq(w5), .Gt(w6));
comparator_1Bit A3(.A(a[1]), .B(b[1]), .Lt(w7), .Eq(w8), .Gt(w9));
comparator_1Bit A4(.A(a[0]), .B(b[0]), .Lt(w10), .Eq(w11), .Gt(w12));

and B1(w13,w2,w4);
and B2(w14,w2,w6);
and B3(w15,w2,w5,w7);
and B4(w16,w2,w5,w9);
and B5(w17,w2,w5,w8,w10);
and B6(w18,w2,w5,w8,w12);
and B7(w19,w2,w5,w8,w11);
and B8(w20,lt1,w19);
and B9(EQ,eq1,w19);
and B10(w22,gt1,w19);
or B11(LT,w17,w13,w15,w20,w1);
or B12(GT,w22,w3,w14,w16,w18);

endmodule
