// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*
Cybersecurity in Solidity - againts bad actors, accidential occurances

Withdrawal pattern ensures that direct transfer call is not made which poses a security threat.
Transfer are atomic (meaning all or nothing!)

Write an iterating function that will refund the transfer method investor to a var
called funders back to their wallets called contributedAmount. 
Add a modifier to the signature that only the owner can execute this funciton.
The function should return a bool success.
*/

// contract test{

//     modifier onlyOwner{
//         require(true);
//         _;
//     }
// function returnFunds() public onlyOwner returns(bool success){
//     for(uint i = 0; funders.length; i++){
//         funders[i].transfer(contributedAmount);
//     }
//     return true;
// }
// }

/* What could go wrong?
What happens if Tatianna rejects the transfer?
If Tatianna rejects the transfer
the function is going to fail and then John will not get paid!

Thinking that all contracts and account want to accept funds automatically may be intuitive at first but it is in fact very naive
and very dangerous to build your code like this

If it is more in their interest to reject funds then
changes are they will reject the funds

write a fallback function
*/

// fallback() public { 

//     emit(Log(gasleft())) ;
// }

    // a default fallback function is not payable - it will reject funds

    // if one contract has a default fallback function it would be deadly for the naive contract
    // to refund this contract address - it will not work unless everyone accepts. It will fail

    // disallow contracts to receive funds

    // Should we disallow contracts to receive funds
    // Because not all contracts will fail or are malicious - it would deter DAOs

    // How does a contract fund out if another address is a contract

contract Victim{
    function isItAContract() public view returns(bool){
        // if there bytes of code greater than zero then it is a contract!
        uint32 size;
        address a = msg.sender;
        // inlne assembly access EVM Ethereum Virtual Machine at a low level
        assembly{
            size := extcodesize(a)
        }
    return(size > 0);
    }
}

contract Attacker {
    bool public trickedyou;
    Victim victim;
    constructor(address _v){
        victim = Victim(_v);
        trickedyou = !victim.isItAContract();
    }
}

// well if you call the address from the constructor there are no byte codes

// What do we do? THE WITHDRAWAL PATTERN
