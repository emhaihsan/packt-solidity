// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing a program, there may be a situation when you need to adapt one out of a given set of paths.
In such cases, you need to use conditional statements that allow your program to make correct decisions and perform right actions

If statement: The if statement is the fundamental control statement that allows
Solidity to execute statements in a more controlled way.
*/

contract DecisionMaking{
    // if the user has the right password then let the user in!
    // if the user has the wrong password don't let them in!

    // If the user has the right passoword let them in else don't!

    uint oranges = 5; // one equal sign assigns value whereas two equal signs (==) equivalent

    function validateOranges() public view returns (bool) {
        if(oranges == 5){ // whatever goes in the parantheses evaluates the trueness
        // curly brackets are for the statement of the if - curly brackets mean then
            return true;
        }else{
            return false;
        }    
    }

    uint stakingWallet = 15;

    function airDrop() public view returns (uint){
        if(stakingWallet == 10){
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }
}

// Exercise in DeFi
// 1. Create a stakingWallet variable as an integer and set it to the value of 10
// 2. Write a function called airDrop which has public visibility, is IDE viewable and returns an integer
// 3. create decision making logic so that if the wallet has a value of 10 then add to the wallet 10 more
// 4. return the value of the wallet
// 5. deploy the contract to test the results - try changing the value of the wallet to 6 and redeploying for varying result

