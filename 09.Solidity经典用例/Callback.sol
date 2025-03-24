// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "solidity-learning/ITest.sol";



contract Callback is ITest{
    
    function val() public view returns (uint256){

        return 100;
    }

    function test() public {
        
    }



}