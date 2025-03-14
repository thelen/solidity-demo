// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Kill{
    function kill() external  {
        selfdestruct(payable(msg.sender));
    }
}