// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

interface ICounter {
    function count() external view returns(uint);
    function inc() external ;

    
}


contract CallInterface{
    uint public count;

    function example(address _counter) external {

        count = ICounter(_counter).count();
        ICounter(_counter).inc();
    }
}