// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract MyError{

    // 自定义异常，旨在节约gas
    error MyException(uint256 account, address _addr);


    function test(address _addr) public {
        if (_addr != msg.sender) {
            revert MyException(100, _addr);
        }
    }


    uint256 public a;
    uint256 public b;

    // 自定义修饰器，类似于Java中的aop
    modifier validOwner(address _addr) {
        // 前置逻辑， 顺序执行
        require(_addr == msg.sender, "not owner");
        // 业务逻辑
        _;
        // 后置逻辑，逆序执行
        a = 1;
        if (a != 1) {
            b = 2;
        }
    }

    function test1() public validOwner(msg.sender){
        // 先执行修饰器，再执行业务逻辑代码
    }
}