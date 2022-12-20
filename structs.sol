// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//can be created outside contract also

contract Struct{

    struct Emp{
        string name;
        uint age;
        address acc;
    }

    Emp public emp;
    Emp[] public emps;

    // constructor(string memory _name,uint _age,address _acc){
    //     emp.name=_name;
    //     emp.age=_age;
    //     emp.acc=_acc;

    // }

    function setvalues() public{
        Emp memory emp1=Emp("Sejal",20,msg.sender);  //1st way

        Emp memory emp2=Emp({name:"Sahil",age:18,acc:0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2});

        Emp memory emp3;
        emp3.name="Maya";
        emp3.age=40;
        emp3.acc=0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);

        emps.push(Emp("Sachin",47,msg.sender));

        //storage is used to get actual address location
        //memory provides location in RAM
        // Emp storage emp_temp=emp;
        // emp_temp.name="Harsh";


        Emp storage emp_temp=emps[0];
        emp_temp.age=19;

        delete emp_temp.acc;

        delete emps[2];
        
    }
}