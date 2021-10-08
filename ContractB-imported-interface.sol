// SPDX-License-Identifier: MIT

// this contract is imported by other contracts
pragma solidity ^0.8.0;

// interfaces does not allow inherit from other interfaces 
// so if you find your self in the situaton where you want to inherit from interfaces 
// then replace the interface keyword with contract
interface InterfaceB {
    function returnSomething () external pure returns(string memory);
}

contract ContractB {
    
    function returnSomething () external pure returns(string memory) {
        return "Something returnded";
    }
}