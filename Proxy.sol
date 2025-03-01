// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract test1 {
    address public owner = msg.sender;

    function setOwner(address _owner) public {
        require(msg.sender == owner,"not owner");
        owner = _owner;
    }

}

contract test2 {
    address public owner = msg.sender;
    uint public value = msg.value;
    uint public x;
    uint public y;

    constructor(uint _x,uint _y) payable {
        x = _x;
        y = _y;
    }
}

contract Proxy {
    event Deploy(address);

    fallback() external payable { }

    function delpoy(bytes memory _code) external  payable returns(address addr) {
        assembly {
            addr := create(callvalue(),add(_code,0x20),mload(_code))
        }

        require(addr != address(0),"deploy failed");

        emit Deploy(addr);
    }

    function execute(address _target,bytes memory _data) external payable  {
        (bool success,) = _target.call{value : msg.value}(_data);
        require(success,"failed");
    }
}

contract Helper {
    function getBytescode1
}