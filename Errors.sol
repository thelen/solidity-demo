// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

// require, revert, assert

contract  Errors{
    function testRequire(uint _i) public pure {
        require(_i <= 10,"i < 10");
    }

    function testRevert(uint _i) public pure{
        if( _i > 10){
            revert(" i > 10");
        }
    }

    error MyError();

    
    
}