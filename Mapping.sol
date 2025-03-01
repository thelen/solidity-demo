// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Mapping{
    mapping(address => uint) public balances;

    function test() external  {
        balances[msg.sender] = 123;
        
    }
}