// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//require: used for error handling
//1) input validation
//2) access control

//Advantage
//1) gas refund (if require does not satisfy condition then it do not proceed and remaining gas is not used)
//2) In function state variables values are reverted back if require fails

contract Require{

    address public add=msg.sender;
    uint public age=25;

    function check(uint _x) public {
        age=age+5;
        require(_x>2,"value is less than 2");
    }

    function onlyOwner() public{
        require(add==msg.sender,"you are not the owner");
        age=age-2;
    }
}