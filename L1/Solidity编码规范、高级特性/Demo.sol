// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Demo{
    struct Todo{
        string name;
        bool isCompleted;
    }

    Todo[] public list;

    // 创建任务
    function create(string memory _name) external {
        list.push(Todo(_name, false));
    }

    // 修改任务名称
    function modifyName1(uint256 _index, string memory _name) external {
        // 直接修改，修改一个属性时比较节省gas
        list[_index].name = _name;
    }

    function modifyName2(uint256 _index, string memory _name) external {
        // 修改多个属性时比较节省gas
        Todo storage temp = list[_index];
        temp.name = _name;
    }

    function modifyStatus1(uint256 _index, bool _status) external {
        list[_index].isCompleted = _status;
    }

    // 自动切换
    function modifyStatus2(uint256 _index) external {
        list[_index].isCompleted =  !list[_index].isCompleted;
    }

    // 两次拷贝
    function get(uint256 _index) external view returns(string memory _name, bool _status) {
        Todo memory temp = list[_index];
        return (temp.name, temp.isCompleted);
    }

    // 一次拷贝
    function get2(uint256 _index) external view returns(string memory name, bool status) {
        Todo storage temp = list[_index];
        return (temp.name, temp.isCompleted);
    }
}