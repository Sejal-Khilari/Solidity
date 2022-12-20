// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract db{
    bytes public temp;

    constructor(){
        temp="jnsnkjnknw";
    }

    function pushele() public{
        temp.push('c');
    }
    function popele() public{
        temp.pop();
    }

    function getele(uint _idx) public view returns(bytes1){
        return temp[_idx];
    }
}