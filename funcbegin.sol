// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract funcbegin{
    uint age=30;

    function add(uint _x,uint _y) public pure returns(uint){
        return _x + _y;
    }

    function changeAge() public{
        age+=1;
    }

    function getage() public view returns(uint){
        return age;
    }
}

function sub(uint _x) pure returns(uint){
    return _x*10;
}