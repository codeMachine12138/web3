// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
    }

    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];

        return (todo.text, todo.completed);
    }

    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function updateStatus(uint256 _index, bool _completed) public {
        Todo storage todo = todos[_index];
        todo.completed = _completed;
    }

    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
