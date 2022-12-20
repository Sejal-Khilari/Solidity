// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _array{
    uint[5] public arr;

    constructor(){
        arr=[10,20,30,40,50];
    }

    //cannot make dynamic size arrays in memory

    function returnarray() public view returns(uint[5] memory){
        return arr;
    }
    // function arraymem() public pure returns(uint){
    //     uint[] memory arraymemo=new uint[](3);       //only fixed size arrays can use memory space
    //     arraymemo[1]=55;
    //     return arraymemo[1];
    // }

    // function arraywithloop(uint _x) public {
    //     for(uint i=0;i<arr.length;i++){
    //         arr[i]=_x+i;
    //     }
    // }

    // function show() public view returns(uint){
    //     // uint temp;
    //     // temp=arr[2];

    //     // arr[2]=1000;
    //     // delete arr[4];
    //     uint len=arr.length;
    //     return len;
    // }
}