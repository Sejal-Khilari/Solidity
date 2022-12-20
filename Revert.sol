// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//same as require but if else is used
//error function same as event is used to reduce gas cost

//assert : to check bug, for security reasons


contract Revert{

    address public add=msg.sender;
    uint public age=25;

    error throwError(string,address); //custom error


    function check(uint _x) public {
        age=age+5;
        // require(_x>2,"value is less than 2");
        if(_x<2){
            // revert("value is less than 2");      msg is in string format so if length of msg increases gas cost increases
            revert throwError("value is less than 2",msg.sender);  //reduces gas cost and provides info as per owners need
        }
    }

    function onlyOwner() public{
        // require(add==msg.sender,"you are not the owner");
        if(add!=msg.sender){
            revert("you are not the owner");
        }
        age=age-2;
    }

    //assert
    function checkOwnership() public view{
        assert(add!=0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
    }
}