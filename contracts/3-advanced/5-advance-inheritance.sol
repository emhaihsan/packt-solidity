// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
INheritance is a way ti extend functionality of contract
Solidity support both single as well as multiple inheritance

Exercise
1. Contract  A should have a state var called innerVal, initialized to 1000
2. create a fully accessible funciton called innerAddTen which returns 10 to any given input
3. contract B should inherit from contract A
4. Contract B shouldhave a function called outerAddTen 
which returns the calculation from the innerAddTen in contract A  to any given input
5. create a function in contract B which returns the value of innerVal from Contract A
6. Compile and succesfully Deploy the contract and test the results
*/

contract A{
    uint innerVal = 100;

    function innerAddTen(uint val) public pure returns(uint){
        return val + 10;
    }
}

contract B is A{
    function outerAddTen(uint val) public pure returns(uint) {
        return A.innerAddTen(val);
    }

    function getVal() public view returns(uint){
        return A.innerVal;
    }
}