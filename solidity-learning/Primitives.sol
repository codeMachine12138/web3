// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Primitives {
    bool public boo = true;

    // 0 to 2**8 - 1
    uint8 public u8 = 1;

    // 0 to 2**256 - 1
    uint256 public u256 = 456;
    uint256 public u = 123;

    // -2**7 to 2**7 - 1
    int8 public i8 = -1;

    // -2**255 to 2**255 -1
    int256 public i256 = 456;
    int256 public i = -700;

    int256 public maxInt = type(int256).max;
    int256 public minInt = type(int256).min;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    bytes1 a = '\xff';
    bytes2 b = '\xc3';
}
