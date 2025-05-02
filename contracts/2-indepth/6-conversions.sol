// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnConversions{

    // uint defaults uint256
    // uint alias of (uint256) is an unsigned integer
    uint32 a = 0x12345678;
    uint16 b = uint16(a); // b = 0x5678

    uint16 c = 0x1234;
    uint32 d = uint32(c); // d = 0x00001234

    // conversion to smaller type cost higher order data
    bytes2 e = 0x1234;
    bytes1 f = bytes1(e); // f = 0x12

    // conversion to higher adds padding bits to the right
    bytes2 g = 0x1234;
    bytes4 h = bytes4(g); // h = 0x12340000
}