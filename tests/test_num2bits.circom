include "Num2Bits.circom";

template Parity() {
   signal input test;
   signal output odd;
	
/* transform test value to binary, if odd output 1, if even output 0 */ 
	component parity = Num2Bits(8);	
	parity.in <== test;
	odd <== parity.out[0];
}
component main = Parity();
