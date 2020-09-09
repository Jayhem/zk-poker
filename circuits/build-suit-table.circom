template SuitTable(cards) {
include "binsum.circom"
/* cards input is 7 cards, 5 common cards and 2 holes cards
Each card is a 6-bit number with 2 MSb representing suits (00 = Diamond, 01 = Hearts, 10 = Spades, 11 = clubs)
The 4 MSb represent the card value (0000 = no card, 0001 = Ace, 0010 = 2, ... , 1101 = King).
*/

    signal input cards[7];
    signal output suits[4];

    c <== a*b;
}

component main = SuitTable();
