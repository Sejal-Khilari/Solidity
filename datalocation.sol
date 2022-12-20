// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*Three ways:
1.Storage
2.Memory
3.Calldata
*/

/*
Storage:
consider it as a block: this storage block is itself on blockchain
state variables are stored in it
As it is stored on blockchain it requires gas cost
data stored is permanent
reference type
*/


//data types are by default stored in storage, whenever we need to use that in functions we need to use memory keyword

/*
Memory:
consider it as a block: this block is in RAM,Stack
local variables(present in function) are stored in it
requires very less or almost negligible amount of gas
data stored is temporary
function input
*/

/*
Calldata:
consider it as a block: this block is in RAM,Stack
work same as memory 
function input
very low gas cost
cannot change input once taken from user
*/

contract dataloc{
    /*
    uint[] public arr=[1,3,9,7,11];

    function store() public{
        uint[] storage arrs=arr;
        arrs[1]=33;
    }

    function memo() public view{
        uint[] memory arrm=arr;
        arrm[3]=99;
    }
    */

    function Memory(string memory str,uint[] memory arr) public{
        getInMemory(arr);
       // getInCallData(arr); gives error as memory block cannot be transfered into calldata
    }
    //storage can be transfered to another storage block or even memory block

    function Calldata(string calldata str,uint[] calldata arr) public{
        getInMemory(arr);
        getInCallData(arr);
        //can pass from calldata to memory but not vice versa
    }

//calldata calling calldata: lowers gas cost as no new array is created
    function getInMemory(uint[] memory arr) public{

    }

    function getInCallData (uint[] calldata arr) public{

    }
}