// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
contract Mycalculator{
    string public creator= "Yatindra";
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }
    
    function sum(int x_,int y_) public pure returns(int){
        return x_ + y_;
    }

    function substract(int x_,int y_) public pure returns(int){
        return x_ - y_;
    }

    function multiply(int x_,int y_) public pure returns(int){
        return x_ * y_;
    }

    function divide(int x_,int y_) public pure returns(int){
        return x_ / y_;
    }
    function personalDivision(int x_ , int y_) public view  onlyOwner returns(int){
        return x_ /y_ ;
    }
}