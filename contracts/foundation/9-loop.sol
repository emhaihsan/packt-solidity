// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;


contract loopContract{

    // a list of number ranging from 1 to 10
    uint [] public numberList = [1,2,3,4,5,6,7,8,9,10];

    // Ex: if we have 4 how many numbers in our list can be a multiple
    // A loop that acts as a multiple checker in our numbersList

    function checkMultiples(uint _numbers) public view returns (uint){
        uint count = 0;
        // 3 part statement of a for loop
        // 1. initialize start of loop
        // 2. determine length of loop
        for(uint i = 1; i < numberList.length; i++){
            if(checkMultiplesValidity(numberList[i], _numbers)){
                count ++;
            }
        }
        return count;
    }   

    // create a function that can check if two numbers are divisible by each others

    function checkMultiplesValidity(uint _num, uint _nums) public pure returns (bool){
        // modulo operator =  % the remainder value of R from integers
        // take two numbers and if they return modulo of zero then the seconds
        // number is a multiple of the first
        if(_num % _nums == 0 ){
            return true;
        } else {
            return false;
        }
    }
}

contract myLoopingPracticeContract{
    uint[] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint[] numberList = [1,4,34,56];

    function checkForEvenNumber(uint _numbers) public view returns (bool){
        for(uint i = 0; i < numberList.length;i++){
            if(numberList[i] == _numbers){
                return true;
            } 
        }
        return false;
    }

    function loopThroughEven(uint _numbers) public view returns (uint){
        uint count = 0;
        for(uint i = 0; i < longList.length; i++){
            if(longList[i] % _numbers == 0){
                count += 1;
            }
        }
        return count;
    }
}
// Looping Practice

// 1. Create a contract myLoopingPracticeContract and place all the following code within:
// 2. Create a list that ranges from 1 to 20 called longlist
// 3. Create a list called numberList of the following number: 1, 4, 34, 56
// 4. Create a function that loops through numberLIst and returns a true value if the number that user inputs exists in the list otherwise it should return false
// 5. Create a function that loops through and returns how many even numbers there are in the long list.