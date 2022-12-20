// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _constructor{
    uint public age;
    string public name;
    address public add1;

    constructor(string memory _name,uint _age,address _add1){
        name=_name;
        age=_age;
        add1=_add1;
    }

    //to initialise values of state variables
    //initiated first after deployment
}