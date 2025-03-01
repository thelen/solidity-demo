// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({
            text:_text,
            completed:false
        }));
    }

    function updateText(uint _index, string calldata _text) external {
        Todo storage  todo = todos[_index];

        todo.text = _text;

    }
}