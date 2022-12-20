// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract pureAndview{
    uint public age=20;

    function viewfun() public view returns(uint){
        return age;
    }

    function purefun() public pure returns(uint){
        return 1;
    }

    function purefun1(uint _x) public pure returns(uint){
        return _x;
    }

    function simplefun() public{
        age=age+10;
    }
}