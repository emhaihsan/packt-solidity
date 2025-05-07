// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/*

Abstract Contract is one which contains at least one function without any implementation.
Such a contract is used as a base contract.
Generally an abstract contract containst both implemented as well as abstract functions
Derived contract will implement the abstract function and use the existing functions as and when required

*/

contract X{
     function y() public  virtual returns(string memory){}
}
// derive
contract Z is X{
    function y() public pure override returns(string memory){
        return "hello";
    }
}

// technocally contract is still abstract since it has at least one function without a body
contract Member{
    string name;
    uint age = 38;

    // because function setName has no body the contract is now abstract
    function setName() public  virtual returns(string memory){}

    function returnAge() public view returns(uint){
        return age;
    }
}

// derived contract
contract Teacher is Member{
    function setName() public override pure returns(string memory){
        return "Gordon";
    }
}

/*
Exercise
1. Creae an abstract base contract called Calculator with a read only public function that returns integer
2. Create a derived contract called test which derives the Calculator contract and can calculate 1 + 2 and return the result
*/


contract Calculator{
    function getResult() public virtual  returns(uint){}
}

contract Test is Calculator{
    function getResult() public pure override returns(uint) {
        return 1 + 2;
    }
}