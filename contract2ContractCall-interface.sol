// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contracts in the same file interact
// here ContractA access the function of ContractB by defining an interface of the function of ContractB returnSomething()
contract ContractA {
    address contractBAddress;
    
    function setContractBAddress(address _contractBAddress) external {
        contractBAddress = _contractBAddress;
    }
    
    function callContractB () external view returns(string memory){ 
        InterfaceB interfaceB = InterfaceB(contractBAddress);
        return interfaceB.returnSomething();
    }
}


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

