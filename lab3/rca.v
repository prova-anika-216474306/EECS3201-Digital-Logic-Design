//RIPPLE CARRY ADDER
 
module lab3(a0, a1, s, light1, light2, outputlight, coutlight);
 
 input [3:0] a0, a1;
 input s;
 output [6:0] light1, light2, outputlight;
 output coutlight;
 //binary
 wire [3:0] result;
 wire cout;
 wire result1, result2;
 
 
decoder input1(a0, light1);
decoder input2(a1, light2);
 
ripplecarry(a0, a1, s, result, cout);
 
decoder output1(result, outputlight);



 
endmodule
