// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnEtherUnits{
    function test() public pure{
        // wei is the smallest denomination of ether
        assert(1000000000000000000 wei == 1 ether);
        assert(1 wei == 1);
        assert(1 ether == 1e18);
        // 1 ether == 1e18
        // create an assertion for 2 eths to be equivalent to weis
        assert(2.5 ether == 2500000000000000000);
    }

    function exercise() public pure{
        assert(60 seconds == 1 minutes);
        assert(60 minutes == 1 hours);
        assert(24 hours == 1 days);
        assert(7 days == 1 weeks);
    }
}