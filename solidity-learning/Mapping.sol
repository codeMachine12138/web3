// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Mapping {

    mapping (address => uint256) public myMap;


    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    function set(address _addr, uint256 _int) public {
        myMap[_addr] = _int;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}