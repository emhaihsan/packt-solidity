// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
A cryptographic hash function (CHF) is a mathematical algorithm that maps data of arbitraty size (often called the "message")
to a bit array of a fixed size (the hash value, hash or massage digest).
It is a one way function that is a function which practically infeasible to invert or reverse the computation

Solidity provides inbuild cryptographic functions as well. Following are importants methods:

keccak256(bytes memory) returns (bytes32) - computes the Keccak-256 hash of the input.

sha256(bytes memory) returns (bytes32) - computes the SHA-256 of the input

ripemd160(bytes memory) returns (bytes20) - compute the RIPEMD-160 hash of the input.


Exercise (Secure the Random functionality from Miner manipulation)
1. Create a contract Oracle with an address datatype called admin and a public integer called rand.
2. Create a constructor and set the admin to the current caller.
3. Write a function which takes the input of an integer and sets the state variable rand to that integer
4. Require that the current caller must equal the admin.
5. Set the oracle contract to a new variable called oracle in the GenerateRandomNumber contract
6. Write a contractor in the GenerateRandomNumber contract which sets the oracle to a deployment address of the Oracle
7. Modify the hash return so that the miners lose contraol manipulation to the randomm generator
8. Succesfully deploy and test the results


*/

contract GenerateRandomNumber {
    Oracle oracle;
    // Build a random number generator which takes an input range and uses cryptographic hashing
    // modulo - so by computing againts the remainder we will able to produce a random number within a range
    // cryptographic hashing

    constructor(address oracleAddress){
        oracle = Oracle(oracleAddress);
    }

    function randMod(uint range) external view returns(uint) {
        // grab information from the blockchain randomly to generate random numbers - we need something dynamically changing
        // abi.encodePacked concatonates arguments nicely
        return uint(keccak256(abi.encodePacked(oracle.rand,block.timestamp, block.difficulty, msg.sender))) % range;

    }
}

contract Oracle{
    address admin;
    uint public rand;

    constructor(){
        admin = msg.sender;
    }

    function setRand(uint _rand) external{
        require(msg.sender == admin);
        rand = _rand;
    }
}