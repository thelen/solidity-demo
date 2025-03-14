// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract TestDelegate {
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable {
        num = 2 * _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
        (bool success,) = _test.delegatecall(
            abi.encodeWithSelector(TestDelegate.setVars.selector, _num)
        );

        require(success,"delegateCall failed");
    }
}