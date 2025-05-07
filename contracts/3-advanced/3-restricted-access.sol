// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
Restricted Access to a contract is a common practice

By Default, a contract state is read-only unless it is specified as public
We can restrict who can modify the contract's state or call a contract's functions using modifier

Let us build a contract with modified restricted access with the following common writeouts:

onlyBy - only the mentioned called can call this function.
onlyAfter - called after certain time period
costs - call this function only if certain value is provided
*/

contract RestrictedAccess {
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _addr) {
        require(msg.sender == _addr, "Sender not authorized");
        _;
    }

    modifier onlyAfter(uint _time) {
        require(_time <= block.timestamp, "Time not valid");
        _;
    }
    // write a function that will change the owner address
    function changeOwnerAddress(address _newAddress) public onlyBy(owner) {
        owner = _newAddress;
    }


    // write a function that can disown the current owner
    function disown() onlyBy(owner) onlyAfter(creationTime + 3 weeks) public {
         delete owner;
    }

    modifier costs(uint _amount){
        require(msg.value >= _amount, "Not enough ether");
        _;
    }

    function forcedOwnedChange(address _newOwner) public payable costs(200 ether){
        owner = _newOwner;
    }

}

/*
Exercise:
1. Create a modifier called costs with takes an _amount
2. Require that msg.value is greater than or equal to the amount
3. If the msg.value is not greater that or equal to the amountreturn a string that says Not enough Ether provided
4. Write a function called forcedOwnedChange which takes an address called _newOwner and is payable
5. Add a modification to the signature so that the function needs 200 ether to execute
6. set the owner of the contract to the new owner of the address
7. Figure out how to make the function actually run
*/