// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Auction{

    address public owner=msg.sender;

    modifier Onlyowner(){
        require(owner==msg.sender,"You are not the owner");
        _;
    }

    function startAuction()public view Onlyowner{

    }

    function stopAuction() public view Onlyowner{

    }

    function checkstatus() public view Onlyowner{

    }

    //can make multiple modifiers as required

    uint public age=30;

    modifier changeage(uint _x){
        age=age+_x;
        _;
    }

    function checkif(uint _y) public changeage(_y){

    }
}