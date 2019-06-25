pragma solidity 0.5.3;
// Importing OpenZeppelin's SafeMath Implementation
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";

contract AuctionBox {
    Auction[] public auctions;

    function createAuction (
        string memory _title,
        uint _startPrice,
        string memory _description
        )
        public {
            require(startPrice > 0);
            // set the new instanc
            Auction newAuction = new Auction(msg.sender, _title, _startPrice, _description);
            // push the auction address to auctions array
            auctions.push(newAuction);
        }

    function returnAllAuctions() public view returns (Auction[] memory) {
        return auctions;
    }
}