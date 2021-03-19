pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
contract TheYogaSutraFilm is ERC721 {
using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;
  mapping(string => uint8) hashes;
constructor() public ERC721("TheYogaSutraFilm", "TYSF") {}
}
function awardItem(0xA4159C6C6a6bb4F50d0eC526Bf2339391213f0CF recipient, string memory hash, string memory metadata)
  public
  returns (uint256)
{
  require(hashes[hash] != 1);
  hashes[hash] = 1;
  _tokenIds.increment();
  uint256 newItemId = _tokenIds.current();
  _mint(recipient, newItemId);
  _setTokenURI(newItemId, metadata);
  return newItemId;
}