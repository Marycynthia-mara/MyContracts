// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ContractB-imported-interface.sol";

// contracts in diffrent files interact
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