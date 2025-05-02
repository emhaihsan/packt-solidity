// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnStrings {
    string greetings = "Hello!, You're her now!"; // 'Hello!' is the string literal. greetings is the name of the string and string is the datatype
    // watch out for weird char
    // \ skip a char
    // \n skips a line - it is solidity supported
    function sayHello() public view returns(string memory){
        // Memory: much like RAM, memory in solidity is a temporary place to store data whereas Storage holds data 
        // The solidity smart contract can use any amount of memory during the eecution
        // but once the eecution stops, the memory is completelu wiped off for the next execution
        return greetings;
    }

    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    function getChar() public view returns(uint){
        // convert strings to bytes we can return the length
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }
}

contract exerciseStrings{
    string favoriteColor = "blue";
    
    function getFavoriteColor() public view returns(string memory){
        return favoriteColor;
    }
    function changeFavoriteColor(string memory _favColor) public {
        favoriteColor = _favColor;
    }
    function getLength() public view returns(uint) {
        bytes memory colorInbytes = bytes(favoriteColor);
        return colorInbytes.length;
    }
}

// Exercises with strings

// 1. create string called favoriteColor
// 2. set the favorite color to blue
// 3. create a function which returns the string literal of favoriteColor
// 4. create a function which changes the favoriteColor string literal from blue to your favorite color
// 5. create a function which can return how many characters there are in the string favorite color