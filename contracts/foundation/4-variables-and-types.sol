// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing program in any language, you need to use various variables to store various informaiton.
Variables are nothing but reserved memory locations to store values.
This means that when you create a variable you reserve some space in memory. 
*/

// Variables: Variables are suer to store information to be referenced and manipulated in a computer program.

// store-owner = 300
// chocolate-bar = 10
// totalValue = store-owner + chocolate-bar = 310
// totalValue = 310

// Types: Boolean - Keyword: bool - Value: true/false
// Integer - Keyword - uint - Value - Signed and unsigned integers of varying sizes
// String - Keyword - String - data values that are made up of ordered sequences of characters

// LEARNING VARIABLES AND TYPES

// Three main types of variables: Booleans, Integers, & Strings
// lieDetector = boolean to check whether is true or false
// walletAmount = integer that would hold the amount

contract learnVariables {
    // all our solidity code

    uint storeOwner = 300;
    uint chocolateBar = 10;
    uint totalValue = storeOwner + chocolateBar;
    bool lieDetector = true;
    uint walletAmount;
    string errorMessageText = "Error! There has been a mistake!";

    // homework
    uint wallet = 500;
    bool spend = false;
    string notifySpend ="you have spend money";

}

// Exercise 
// 1 create a new variable called wallet as an integer
// 2. Create a boolean called spend
// 3. Create a string give it the name notifySpend
// 4. Initialize the wallet to 500
// 5. Set the value of spendto false
// 6. Add the string literal (the string value) 'you have spend money' to notifySpend


