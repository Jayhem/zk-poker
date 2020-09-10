include "Num2Bits.circom";

template SuitTable(nbPlayer) {
/* cards input is 7 cards, 5 common cards and 2 holes cards
Each card is a 6-bit number with 2 MSb representing suits (00 = Diamond, 01 = Hearts, 10 = Spades, 11 = clubs)
The 4 MSb represent the card value (0000 = no card, 0001 = Ace, 0010 = 2, ... , 1101 = King).
*/

    signal input cards[nbPlayer][7];
    signal output suits[4];
    var tmp_suits[4];
/* do not know how to initialize each value to 0 other than loop */
    for (var k = 0; k<4; k++) {
	tmp_suits[k]=0; }
    for (var i = 0; i<nbPlayer; i++) {
	for (var j = 0; j<7; j++) {
	component binCard = Num2Bits(6);	
	binCard.in <== cards[i][j];
	tmp_suits[binCard.out[0]*2 + binCard.out[1]*1] +=1;
	}
    }
    for (var k = 0; k<4; k++) {
        suits[k] <== tmp_suits[k]; }   
}
component main = SuitTable(2);
