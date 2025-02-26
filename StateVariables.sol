// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract StateVariables {
    uint public myUint = 123;
    address public addr;
    
    function foo() external {
        
        addr = address(1);
    }
}