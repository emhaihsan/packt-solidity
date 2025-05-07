// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*

Interfaces are similar to abstract contract and are created using interface keyword

Following are the key characteristics of an interface.
    Interface can not have any function with implementation
    Functino of an interface can be only of type external

    Interface can not have constructor
    Interface can not have state variables
    Interface can have enum, structs which can be aceessed using interface name fot notation
*/

contract Counter{
    uint public count;

    function increment() external{
        count += 1;
    }
}

// how do we interact with this contract without copy and pasting the code??
// answer - interfaces

interface ICounter{
    function count() external view returns(uint);
    function increment() external;

}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}

/*
Exercise Interfaces with Uniswap (Decentralized Exchange)
In Uniswap each Uniswap smart contract, or pair, manages a liquidity pool made up of reserves of two ERC-20 tokens!
In this exercise you are going to use the IDE to speak to Uniswap and get the reserves of a Uniswap pair of your choosing :0 

These are the instructions in order to complete this exercise:
1. Create two interfaces which each hold separate function signatures which you must look up in the Solidity docs V2 
2. One interface will be called UniswapV2Factory which will contain the function signature that gets pairs.
3. Another interface will be called UniswapV2Pair with will contain the function signature to get reserve values. 
4. Create a contract which contains addresses of the paired tokens you choose as well as the factory address.
5. Within the contract make a function which can successfully get the pair of your tokens and set it to a single address
6. Use that address to get the reserve values and finally return the reserve values 
7. Switch to Mainnet and connect MetaMask but DO NOT deploy the contract (or you will spend money!!!)
8. From the Mainnet manually go through the steps of retrieving the values without deploying or spending gas!
9. Post your results of the reserve values in our Discord community and celebrate beacuse you have seriously earned it! 
10. Good luck! 
*/

interface UniswapV2Factory{
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair{
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract Test{
    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private usdt = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address private chainlink = 0x514910771AF9Ca656af840dff83E8264EcF986CA;

    function getReserveTokens() external view returns(uint,uint){
        address pair = UniswapV2Factory(factory).getPair(usdt, chainlink);
        (uint reserve0, uint reserve1, ) = UniswapV2Pair(pair).getReserves();
        return (reserve0, reserve1);
    }

}