// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Counter {

    address public constant MY_ADDR = address(1);
    int public count;

    function inc() external {

        for(uint i = 0;i < 10;i++){
            count += 1;
        }
        
    }

    function dec() external {
        for(uint i = 0;i < 10;i++){
            count -= 1;
        }
        
    }
}