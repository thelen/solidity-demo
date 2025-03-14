// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract EtherWallet {

    address payable  public onwer;


    constructor(){
        onwer = payable (msg.sender);
    }

    receive() external payable { }

    function withdraw(uint256 _amount) external {
        require(msg.sender == onwer,"caller is not owner");
        payable (msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256){
        return address(this).balance;
    }
}