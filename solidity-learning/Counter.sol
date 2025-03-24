// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Counter {

    uint256 public count;

    function get() public view returns (uint256) {
        return count;
    }


    // 自增，步长为1
    function inc() public {
        count += 1;
    }

    function dec() public {
        require(count > 0, "count is 0");
        count -= 1;
    }
}