// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Array {

    //动态数组
    uint256[] public arr1;
    uint256[] public arr2 = [1,2,3];

    // 固定长度的数组，其余为0
    uint256[10] public arr3 = [1,1,2];


    function get(uint256 _idx) public view returns (uint256) {
        require(_idx < arr3.length, "out of length");
        return arr3[_idx];
    }

    function push(uint256 i) public {
        arr2.push(i);
    }

    function pop() public {
        arr2.pop();
    }

    function getlength() public view returns (uint256) {
        return arr3.length;
    } 

    function remove(uint256 _idx) public {
        delete arr3[_idx];
    }
}