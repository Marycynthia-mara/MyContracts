// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contracts in the same file interact
// here ContractA access the function of ContractB by defining an instance of ContractB
contract ContractA {
    address contractBAddress;
    
    function setContractBAddress(address _contractBAddress) external {
        contractBAddress = _contractBAddress;
    }
    
    function callContractB () external view returns(string memory){ 
        ContractB contractB = ContractB(contractBAddress);
        return contractB.returnSomething();
    }
}


contract ContractB {
    
    function returnSomething () external pure returns(string memory) {
        return "Something returnded";
    }
}

