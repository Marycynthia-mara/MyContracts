// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractB {
    
    function returnSomething () external pure returns(string memory) {
        return "Something returnded";
    }
}