// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SendEth{
    constructor() payable {

    }

    receive() external payable { }

    function sendViaTransfer(address payable _to) external payable{
            _to.transfer(123);
    }


    function sendViaSend(address payable _to) external payable{
        bool sent = _to.send(123);
        require(sent,"send failded");
    }

    function sendViaCall(address payable _to) external payable{
        (bool success,) = _to.call{value:123}("");
        require(success,"call failded");
    }

}

contract EthReceiver{

    event Log(uint amount,uint gas);

    receive() external payable {
        emit Log(msg.value,gasleft());
     }

}