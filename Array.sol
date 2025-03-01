// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Array{
    uint[] public nums = [1,2,3];
    uint[10] public numsFixed = [4,5,6];

    function example() external {
        nums.push(4);
        delete nums[1];

        uint[] memory a = new uint[](5);

    }

}