// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
The withdrawal pattern

Instead of using transfer which reverts the code we can use send which returns a bool

Write a function so only the owner can send tatianna funds with the send method with logic
to set up whta happens if the amount is not sent to Tatianna
*/


// function sendRefund() public onlyOwner returns(bool){
//     if(!tatianna.send(amount)){
//         // do something with failure
//     }
// }

// this can still get messy for accounting..

/*
Write a withdrawal function so that the investor can withdraw funds on their own thorugh that functionality. 
Let them do it themselves!!
Enter our best friend over here - msg.sender
*/

/*
Write another function to claim refunds. Write a function called claimRefund
which requires that the balance of the msg.sender greater than 0
and transfer the balance to the current caller.
Pseudo balance var named balance
*/

// function claimRefund() public{
//     require(balances[msg.sender] > 0, "No funds to claim!");
//     msg.sender.transfer(balance[msg.sender]);
// }

// by working directly to claim a refund with their contract address we eliminate the outside interference
// very greatly!

// BY MAKING OUR TRANSACTIONS ONE AT AAA TIME we greatly reduce danger to our executions.
// - withdrawal patterns

/*
Exercise - It is not safe to interact with more than one customer at a time
 so write a function to return funds using thw withdrawal patter.

 1. Write a function called withdrawFunds that takes an amount and returns bool success in the signature.
 2. Require that the balance of the current caller is greater than or equal to the amount.
 3. substract the amount from the balance of the current sender
 4. transfer the amount over and return the trueness of the function
*/

contract test{
    mapping(address => uint256) balances;
    function withdrawFunds(uint amount) public returns(bool success){
        require(balances[msg.sender] >= 0, "Not enough balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        return true;
    }
}