// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _payable{

    address payable public owner=payable(msg.sender);
    //need to make var as well as address as payable

    constructor() payable{
        
    }

    function getEth() public payable{

    }

    function checkBal() public view returns(uint){
        return address(this).balance;
    }
}