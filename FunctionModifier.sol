// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

//basic,modifiter,sandwich

contract FunctionModifier{
    bool public paused;
    uint public count;

    function setPause(bool _pause) external {
        paused = _pause;
    }

    modifier whenNotPaused(){
        require(!paused,"paused");
        _;
    }

    function inc() external whenNotPaused{
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    modifier sandwich(){
        count += 10;
        _;
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }

    



}