pragma solidity >=0.6.0 <0.9.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract SpaceCraftNft is ERC721 {
  uint256 public totalSupply;
    constructor() ERC721("SpaceCraftNft", "SCNFT") {

  }

  function mint() public {
    _mint(msg.sender, totalSupply);
    totalSupply += 1;

  }
  
 

}