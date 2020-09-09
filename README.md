# zk-poker
Creating a poker application that relies on the blockchain for settlements, but everything else is done by the client.
Relying on the clients themselves for computation, it is necessary to have a way to prove that the aforementioned computations are done correctly. To this end, this project will use ZK-SNARKs technology to find what the winning hand is, given the 5 common cards and each player's hole cards.
I use iden3's circom libary to create the circuits, and Ethereum L1 for proving computations are done properly.
