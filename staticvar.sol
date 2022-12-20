// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract staticvar{
    uint public salary;

    constructor(){
        salary=5000;
    }

    function setsalary() public{
        salary=1000;
    }

//above are three mentioned ways to decalre static variables.
//No more static variables should be created as they require more storage on block
//declared inside contract but outside function
}