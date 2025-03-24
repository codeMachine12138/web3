// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
interface ITest {
    function val() external view returns(uint256);

    function test() external;
}

contract IReceive{

    function callback(address _addr) public {
        ITest(_addr).test();

        ITest(_addr).val();
    }
}