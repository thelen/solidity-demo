// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

// state
// global
// function modifier
// function 
// error handling

contract Owanable {
    address public owner;
    
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"not owner");
        _;
    }

    function setOwner(address _newOwner) external  onlyOwner{
        require(_newOwner != address(0),"invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCallThisFun()external onlyOwner {

    }

    function anyOneCanCall() external  {
        
    }

}