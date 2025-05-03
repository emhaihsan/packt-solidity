// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract MyContract {

    uint value;

    // getValue doesn't modify state / read only function
    function getValue() view external returns (uint) {
        // eth call
        return value;
    }

    // not read or modify, it pure calculations
    function getNewValue() pure external returns (uint) {
        // eth call
        return 5 * 5;
    }

    // setValue modifies the state value
    function setValue(uint _value) external{
        // eth send transaction
        value = _value;
    }

    function multiply() public pure returns(uint){
        return 3 * 7;
    } 

    function valuePlusThree() public view returns(uint){
        return value + 3;
    }
}

/*
Exercise: 
1. create a function called multiply which returns 3 multiplied by 7
2. create another function called valuePlusThree which returns the state variable value + 3
3. succesfully deploy the contracts and test for the result
*** REmember*** to use the appropriate modifying keywords accordingly
*/