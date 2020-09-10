template SuitTable(nbPlayer) {
include "num2bits.circom"
/* cards input is 7 cards, 5 common cards and 2 holes cards
Each card is a 6-bit number with 2 MSb representing suits (00 = Diamond, 01 = Hearts, 10 = Spades, 11 = clubs)
The 4 MSb represent the card value (0000 = no card, 0001 = Ace, 0010 = 2, ... , 1101 = King).
*/

    signal input cards[nbPlayer][7];
    signal output suits[4];
    for (var i = 0; i<nbPlayer; i++) {
	for (var j = 0; j<7; j++) {
	binCard = Numb2Bits(6);
	suits[binCard[0]*2 + binCard[1]*1] +=1;
	}
	
}
}
component main = SuitTable();
