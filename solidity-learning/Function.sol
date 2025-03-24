// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Function{

    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 3);
    }

    function returnMany1() public pure returns (uint256 a, bool b, int8 c) {
        a = 1;
        b = true;
        c = -1;
    }

    function returnMany2() public {
        (uint256 a, bool b, uint256 c) = returnMany();
    }
}