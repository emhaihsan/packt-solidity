// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
In Solidity (the programming language for Ethereum smart contracts), 
a function is a block of code that performs a specific task. 
Functions are essential building blocks for creating reusable and modular contract logic.

Basic Function Structure:

A function consists of:

A return type
The name of the function
Parameters (optional)
Code inside curly brackets {}

pseudo thought code experiment
door - variable (stored information)
remoteControlOpen - open the door - function
remoteControlClose - close the door - function
*/

contract learnFunctions{
    // function function-name(parameter-list) scope returns(){
        // statement }
    function remoteControlOpen(bool closedDoor) public {
        // all the code of the function - the script
    }

    // local variables will superceed state variables
    uint a = 45;

    // create a function that can add up to two variables
    function addValues() public pure returns(uint256){
        // return 1 + 3;
        // we can put any expression here
        // all the variables that we write in the function remains localized in the function
        uint a = 2;
        uint b = 3;
        uint result = a+b;
        return result;
    
    }

    // function name(inputs) scope returns {
    //     // statement
    // }

    function addNewValues() public view returns (uint){
        uint b = 5;
        uint result = a + b;
        return result;
    }

    function multiplyCalculator(uint numA , uint numB) public pure returns(uint){
        uint result = numA * numB;
        return result;
    }

    function divideCalculator(uint numA , uint numB) public pure returns(uint){
        uint result = numA / numB;
        return result;
    }

    // Exercises
    // 1. create a function in the learnFunctions contract called multiplyCalculator
    // 2. Add two parameters to the function a & b and set them as integers
    // 3. Grant the function public visibility as well as viewing capability for the IDE.
    // 4. return an integer for the function
    // 5. create a variable result that contains the logic to multiply a and b
    // 6. return the result
    // 7. Compile and deploy your very first Applicarion and test out the result

}
