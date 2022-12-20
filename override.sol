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

    function fun() public pure virtual returns(string memory){
        return "Hii I am in A";
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

     function fun() public pure virtual override returns(string memory){
        return "Hii I am in B";
    }
}

contract C is A,B{
                              //order does not matter
    function fun() public pure override(A,B) returns(string memory){
        return "Hii I am in C";
    }
}