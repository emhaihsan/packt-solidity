// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract WelcomeToSolidity{
    constructor(){
    }
    // is adding two integers
    function getResult() public pure returns(uint){
        uint a = 11;
        uint b = 4;
        uint result = a + b;
        return result;
    }
}

// Exercise => Change the funtion called getResult in our WelcomeToSolidity contarct so that the output 
// returns 15


