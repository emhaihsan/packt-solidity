// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;
// special / global variables are globally available variables and provides information

contract LedgerBalance{
    // create a map of wallets with amounts
    // set up a funciton that can update the amount of the person call the contract - current address - msg.sender
    mapping(address => uint) public balance;

    function updatesBalance(uint newBalance) public{
        balance[msg.sender] = newBalance;
    }

    // create a new contract called Updated
    // create a public function called updatesBalance
    // instantiate the data type contract ledgerBalance to a new variable called ledgerBalance (similar to struct or enum).
    // set the new variable ledgerBalance = new ledgerBalance()
    // update the ledgerBalance to 30
    // deploy both contracts and then update the ledgerBalance by 30 using the Updated contract
}

contract Updated{
    function updatesBalance() public {
        LedgerBalance ledgerbalance = new LedgerBalance();
        ledgerbalance.updatesBalance(30);
    }
}

// Other Global Variable Examples

contract SimpleStorage{
    uint storedData;

    function set(uint x) public {
        // block.difficulty
        // block.timestamp
        // block.number
        storedData = x;
    }
    function get() public view returns(uint){
        return storedData;
    }


}