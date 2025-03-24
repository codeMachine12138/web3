// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Immutable {
    address public immutable MY_ADDRESS;

    uint256 public immutable MY_UINT;

    // 和常量类似，可以在构造器中被赋值，不可更改
    constructor(uint256 _myint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myint;  
    }
}