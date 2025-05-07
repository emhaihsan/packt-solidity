// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;


contract LearnEvents{
    // 1. declare the event and 2. we want to emit the event

    // Camelcase is a good convention -something to remember
    event NewTrade(
        uint indexed date,
        address from,
        address to,
        uint amount
    );

    function trade(address to, uint amount) external {
        // outside consumer can see the event through web3js
        // block.timestamp is a global variable that gives the current timestamp
        emit NewTrade(block.timestamp,msg.sender, to, amount);
    }
    }