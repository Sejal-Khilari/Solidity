// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    uint public a;

    constructor(){
        a=100;
    }

    function funA() public{
        a=10;
    }
}

contract B is A{
    uint public b;

    constructor(){
        b=200;
        a=50;
    }

    function funB() public{
        b=20;
    }
}

contract C is A,B{
               //most based to most dived
    //execution: right to left and depth first
}
