// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Structs{
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] private  cars;
    
    mapping(address => Car[]) public carsByOwner;


    function examples() external {
        Car memory toyota =  Car("Toyota",1990,msg.sender);
        Car memory lambo = Car({model : "Lamborghini",year:1990,owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2020;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

    }
} 