// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
Observe the contract in Solidity is similar to a class in C++ - a blueprint for an object

Constructor - A Special function declared with constructor keyword which will be 
executed once per contract and is invoked when a contract is created
State Variables - Variables per contract to store the state of the contract

Functions - Functions per COntract which can modify the state variables to alter the state of a contract

Recall visibility Scope Keywords:
external - External funcitons are meant to be called by other contracts.
They cannot be used for internal call. To call external funciton within conract this.function_name() call is required.
State variable cannot be marked as external.

public - Public functions/ Variables can onlyy used both externally and internally
internal - Internal funcitons / variables can only be used internally or by derived contracts
private - Private functions/ Variables can only be used internally and not even by derived contracts.

RECALL THE FOLLOWING:
*/

contract A {
    
    uint public data = 10; // state variable 
    
    function x() external pure returns (uint) {
        uint newData = 25;
        return newData;
    }
    
    function l() public view returns(uint) {
        uint newData = data - 3;
        return newData;
    }
    
    
    function y() public view returns (uint) {
        return data;
    }
    
}

contract B {
    A a = new A();
    
    function f() public view returns (uint) {
        return a.l();
    }
    
}



/*

Exercise: 

1. Create 3 contracts C, D, and E 
2. Do the following in contract C:
    a. Create an integer state variable called data which  can only be used internally and not at all in any other contracts. 
    b. Create an integer state variable called info which can be called both inside and outside the contract 
    c. immediately initialize info's value to 10 within a constructor
    d. Createa a function called increment which can only be used internally and not at all in any other contracts.
    It should take an input integer called a and be read only returning the calculation of its input + 1
    e. Write a function calle dupdateData which takes an integer argument called a and sets data to the argument. 
    The function should be able to be called both inside and outside the contract.
    f. Write a read only function called getData which returns value of the data and can be called both inside and outside the contract 
    g. Write a read only function called compute which calculates and returns two integer arguments a + b.
    The function should can only be used internally or by derived contracts.
*/
contract C{
    uint internal data;
    uint public info;

    constructor(){
        info=10;
    }

    function increment(uint a) internal pure returns(uint){
        return a + 1;
    }

    function updateData(uint a) public {
        data = a;
    }

    function getData() public view returns (uint){
        return data;
    }
    function compute(uint a, uint b) public pure returns (uint){
        return a + b;
    }
}
/*
    Do the following in contract D:
    a. derive contract C to a new variable c and set a new instance of the contract to it. 
    b. write a read only function called readInfo which returns the info from contract c
    which can be called both inside and outside the contract .
*/
contract D{
    C c = new C();
    function readInfo() public view returns(uint){
        return c.info();
    }
    
}
/*
    
    Do the following in contract E:
    a. inherit contract C into E with the special keyword is 
    b. create an integer called result which can only be used internally and not even by derived contracts.
    c. create a private variable c which inherits the contract C 
    d. immediately set the variable c to a new instance of the contract C upon deployment with a constructor
    e. write a function called getComputedResult which sets the values of 23 and 5 to the compute function in contract C to the var result
    The function can be used both externally and internally. 
    f. create a public read only function called getResult which returns the var result. 
    g. create a read only function which returns the info variable from contract C and set the function 
    to be used both externally and internally. 
    
    h. Celebrate completing this dang long exercise because you deserve it!!!!

*/



contract E{
    C public c = new C();
    uint private result;
        function getComputedResult() external {
            uint a = 23;
            uint b = 5;
            result = c.compute(a,b); 
        }
}
