pragma solidity >=0.6.0 <0.9.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/build/contracts/Strings.json";


contract SpaceCraftNft is ERC721 {
  uint256 public totalSupply;
    constructor() ERC721("SpaceCraftNft", "SCNFT") {

  }

  function mint() public {
    _mint(msg.sender, totalSupply);
    totalSupply += 1;

  }

 function tokenURI(uint256 tokenId) public pure override returns (string memory) {
    return string(abi.encodePacked("https://raw.githubusercontent.com/amirhm95/SpaceCraftNft/master/assets/SpaceCraftNft_", Strings.toString(tokenId), ".json"));


   }

}