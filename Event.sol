// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Event {
    event Log(string message,uint val);
    event IndexedLog(address indexed sender,uint val);
    

    function example() external {
        emit Log("foo",1234);
        emit IndexedLog(msg.sender, 789);
    }
    
}