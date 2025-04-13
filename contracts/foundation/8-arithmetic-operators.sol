// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

// OPERATORS

// An operator in a programing language is a symbol that tells the compiler
// Or interpreter to preform specific amthematical, relational or logical operation and produce final result.

// Arithmetic Operators: + - % /
// Comparison Operators: == ===
// Operands: variables
// Operators: signs

/*
Identify the operators and the operands
-> operand: fred, tom, weekendAdventure
fred * tom = weekendAdventure
*/

contract Operators{
    function calculator() public pure returns(uint){
        uint a = 5;
        uint b = 7;
        uint result;
        result = a % b;
        return result;
    }

    // Create a function that finds the remainder of 3 % 4
    // increment and decrement
    // Arithmetic Operators: + - * / % ++ --

    // a = 2 b = 12
    // 1. a + b - b + a = ?
    // 2. a * b * b - 1 = ?
    // 3. b + b++ + a++
    // 4. (b %a) + 3 = ?

    function remainderofFour() public pure returns(uint){
        return (3 % 4);
    }

    uint public resA;
    uint public resB;
    uint public resC;
    uint public resD;

    function arithmetic() public {
        uint a = 2;
        uint b = 12;
        resA = a + b - b + a;
        resB = a * b * b - 1;
        resD = (b % a) + 3;
        resC = b + b++ + a++;
    }


}
/*
THE MODULO CALCULATION TRICK (finding the remainder)
1. divide the dividend
2. disregard the fraction in the result
3. multiply the result by the divisor
4. substract the new result from the divident

A. 12 % 23
1. dividend = 12, divisor = 23
2. q = 12 / 23, q = 0
3. 0 * 23 = 0
4. 12 - 0 = 12

B. 112 % 35 = R
1. dividend = 112, divisor = 35
2. q = 112 / 35, q = 3
3. 3 * 35 = 105
4. 112 - 105 = 5

R = 6

*/

contract ComparisonOperators {
    uint a = 4;
    uint b = 6;

    function compare() view public {
        // < less than
        require(a < b, "That is false");
        
    }
}

contract Logicaloperators {
    uint a = 17;
    uint b = 32;
    
    function logic() public view returns(uint){
        uint result = 0;
        if(a < b && a == 4){
            result = a + b;
        }
        return result;
    }

    // 1. create a function which will multiply a by b and divide the result by b
    // 2. Only return the multiplication if b is greater than a AND a does not equal b
    // 3. Initialize a = 17 and b to 32
    function aTimesB() public view returns(uint){
        uint result = 0;
        
        if(a < b && a != b){
            result = a * b;
        }
        return result;
    }
}

contract AssignmentOperator{
    uint b = 4;
    uint a = 3;
    function assign() public view returns(uint){
        uint c = 2;
        // Assigning c to b
        c = c + c + b;
        // return c += c + b
        return c ; // rewrite this result in assignment form
    }
}

// Operator Exercise
// 1. Initialize 3 state variables a, b, f
// 2. assign each variable the following: a should equal 300, b should equal 12, f should equal 47
// 3. create a function called finalize that is public and viewable which returns a local variable d
// 4. initialize d to 23
// 5. return d in shor handed assignment form to multiply itself by itself and then subtracted by b
// 6. bonus make the function conditional so that it will only return the multiplication if a >= b and b  is less than f 
// otherwise d should return 23.

contract FinalExercise {
    uint a = 300;
    uint b = 12;
    uint c = 47;

    function finalize() public view returns(uint ){
        uint d = 23;
        if(a >= b && b < c){
             d *= d ; // rewrite this result in assignment form
             return d -= b;
        } else {
            return d;
        }
    }
}