// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract SimpleStorage{


    // 状态变量
    uint256 public num;

    function set(uint256 _int) public {
        num = _int;
    }

    function get() public view returns (uint256) {
        return num;
    }
}