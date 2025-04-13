// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

// Variable Scope = Functions & Variables

// Private = You can only call the function inside the contract
// Internal = called only within the contract OR other contracts that inherit the contract
// Internal is slightly less restrictive than public
// External you can only call the function outside the smart contract
// Public you can call the function anywhere, outside or inside smart contract

// How to decide?
// Give minimum amount of privilege
// 1. private, 2. internal, 3. external, 4. public

// modify the rules of scope in Solidity with keywords
// private public external internal

// State Variables vs Local Variables

contract C {
    uint internal data = 10; // state variable

    function x() public pure returns(uint){
        // modify function x so that you return 25 for data without
        // changing the data of the state
        uint newData =  25;
        return newData;
    }

    function y() public view returns(uint){
        return data;
    }
}
