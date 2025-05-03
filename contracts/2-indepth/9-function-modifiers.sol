// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract Owner{
    address owner;
    // when we deploy this contract we want to set the address to the owner

    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
        // the underscore continues with the function
    }

    modifier cost(uint _price){
        require(msg.value >= _price);
        _;
    }
}

contract Register is Owner{
    
    mapping (address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) public { price = initialPrice;}

    function register() public payable cost(price){
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }

    // msg.value == the amount of wei sent into contract
    
}

/*
Exercise 
1. create a function modifier called cost for our register function that checks to see the sender
value (hint look up msg.value) has to be greater than or equal to the price, the function
should take an argument
*/