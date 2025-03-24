// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract X{
    string public text;
    constructor(string memory _text) {
        text=_text;
    }
}

contract Y{
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract A is X, Y{
    constructor() X("aa") Y("bb") {

    }
}