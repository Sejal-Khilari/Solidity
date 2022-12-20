// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _bytes{
    bytes5 public temp1;
    bytes7 public temp2; 

    function setval() public{
        temp1="abcde";
        temp2="12abcde";
    }

    function getdigit() public view returns(bytes1){
        return temp1[2];
    }

    function getlen() public view returns(uint){
        return temp1.length;
    }
}