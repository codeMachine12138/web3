// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Loop {

    function loop() public {
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // 跳出本次循环
                continue;
            }
            if (i == 8) {
                // 结束循环
                break;
            }
        }
    }
}