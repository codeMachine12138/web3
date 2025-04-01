// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Bank {
    address public immutable owner;

    event Deposit(address _addr, uint256 amount);

    event Withdraw(uint256 amount);

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    constructor() {
        owner = msg.sender;
    }

    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Not Owner"); // only callable from owner
        emit Withdraw(amount);
        // 自销毁
        selfdestruct(payable(msg.sender));
    }

    function getBlance() external view returns (uint256) {
        return address(this).balance;
    }
}
