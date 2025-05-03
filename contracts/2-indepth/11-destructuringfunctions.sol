// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
Destructuring Solidity
Solidity functions can return multiple variables of different types.
If you only want to keep one variable, then you can declare a variable and then use commas
*/

contract Destructure{
    uint public changeValue;
    string public tom = "Hello";

    function f() public pure returns (uint, bool, string memory){
        return (3, true, "haha");
    }

    function g() public {
        (changeValue,,tom)  = f();
    }
}