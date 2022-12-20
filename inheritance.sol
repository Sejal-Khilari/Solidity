// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    uint public x=100;
    address public acc=msg.sender;

    function fun1() public pure returns(string memory){
        return "I am in Contract A";
    }
    function fun2() public pure returns(string memory){
        return "I am in Contract A";
    }
    function fun3() public pure virtual returns(string memory){
        return "I am in Contract A";
    }
    function fun4() public pure virtual returns(string memory){
        return "I am in Contract A";
    }
}

contract B is A{
    function fun3() public pure override returns(string memory){
        return "I am in Contract B";
    }
    function fun4() public pure virtual override returns(string memory){
        return "I am in Contract B";
    }
}

contract C is B{
    function fun4() public pure virtual override returns(string memory){
        return "I am in Contract C";
    }
}