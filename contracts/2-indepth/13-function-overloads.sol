// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
Function Overloading:

You can have multiple definitions for the same function name in the same scope
The definition of the function must differ from each other by the types and or the number of arguments in the argument list
You cannot overload function declarations that differ only by return type.
*/

contract FunctionOverloading{
    function x(uint lightSwitch, uint wallet) public {

    }

    function x(uint wallet) public {

    }

    function add(uint a, uint b) public pure returns (uint) {
        return a+b;
    }
    function add(uint a, uint b, uint c) public pure returns (uint){
        return a + b+c;
    }

    function tesAdd(uint a, uint b) public pure returns(uint){
        return add(a, b);
    }

    function tesAdd(uint a, uint b, uint c) public pure returns (uint){
        return add(a, b, c);
    }
}

/*
Exercise:
1. Create two functions with the same name that return the sum of their arguments,
2. one function which takes two arguments and another function which takes three arguments
3. Create two additional funciton which can call each sum function and return their various sums.
*/