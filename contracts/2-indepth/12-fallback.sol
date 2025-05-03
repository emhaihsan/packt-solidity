// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*h
Define Fallback Functions:
1. Cannot have a name
2. Does not take any inputs
3. Does not return any outputs
4. Must be declared as external

Why use it? When you call functions that does not exist - or sned ether to a contract by send, transfer or call

statement: send and transfer method receives 2300 gas but call metod receives more*/

contract FallBack{
    event Log(uint gas);
    fallback() external payable {
        // not recommedded to write much code in here - because the funciton will fail if it uses too much gas
        // invoke send: we get 2300 gas which is enough to emit a log
        // special solidity function gasleft returns how much gas is left
        emit Log(gasleft());
    }

    function getBalance() public view returns(uint){
        // return the stored balance of the contract
        return address(this).balance;
    }
}

// new contract will send ether to fallback contract which will trigger fallback functions
contract SendToFallBack{
    function transferToFallBack(address payable _to) public payable {
        // send ether with the transfer method
        // automatially transfer will transfer 2300 gas amount
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable {
        // send ether with call
        (bool sent, ) = _to.call{value:msg.value}("");
        require(sent, "Fail to send!");
    }
}

// Exercise is to understand these contracts and write it out and explain the logic

