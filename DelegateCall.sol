// SPDX-License-Identifier: MIT
// Original challenge at: https://ethernaut.openzeppelin.com/level/0xF781b45d11A37c51aabBa1197B61e6397aDf1f78
pragma solidity ^0.8.0;

contract Encode {

    function encode(string memory _string1, uint _uint, string memory _string2) public pure returns (bytes memory) {
            return (abi.encode(_string1, _uint, _string2));
    }
        
    function decode(bytes memory data) public pure returns (string memory _str1, uint _number, string memory _str2) {
            (_str1, _number, _str2) = abi.decode(data, (string, uint, string));            
    }

    function hash(string memory _string3) public pure returns (bytes32) {
        return (keccak256(abi.encode(_string3)));
    }

    function getBytes(bytes32 _bytes) public pure returns (bytes4) {
        return (bytes4(_bytes));
    }

    function getBaseFee() public view returns (uint) {
        return (block.basefee);
    }

    // Check https://stackoverflow.com/questions/71565992/passing-msg-data-in-external-contract-using-delegate-call
    function encodeWSignature(string memory _string4) public pure returns (bytes memory) {
        return (abi.encodeWithSignature(_string4));
    }

}