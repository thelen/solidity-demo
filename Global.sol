// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Global{
    function globalVer() external  view  returns (address,uint,uint){
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender,timestamp,blockNum);
    }
}