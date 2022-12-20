// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    string public name;
    uint public age;

    constructor(string memory _name,uint _age){
        name=_name;
        age=_age;
    }
}

contract B{
    string public add;
    uint public salary;

    constructor(string memory _add,uint _salary){
        add=_add;
        salary=_salary;
    }
}


//order of execution
//A B C
contract C is A("Sejal",20),B("Pune",5000){

}

//A B D
contract D is A,B{
    constructor() A("SEJ",20) B("PUNE",10000){

    }
}

// A B E
contract E is A,B{
    constructor(string memory _name,uint _age,string memory _add,uint _salary) A(_name,_age) B(_add,_salary){

    }
}

contract F is A("Sahil",18),B{
    constructor(string memory _add,uint _salary) B(_add,_salary){

    }
}