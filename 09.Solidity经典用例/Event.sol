// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract MyEvent{
    event LogMessage(string message);

    function test() public {
        emit LogMessage("This is a log message");
    }
}