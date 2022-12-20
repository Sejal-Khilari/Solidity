// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//can be created only at contract level
// contract map{
// //key-value,enum,contract
//     mapping(uint=>string) public emp_id;

//     function setid() public{
//         emp_id[31]="Sejal";
//         emp_id[30]="Sahil";
//         emp_id[29]="Maya";
//         emp_id[28]="Sachin";
//     }

//     function getid(uint _idx)public view returns(string memory){
//         return emp_id[_idx];
//     }

    
// }

struct donar_dts{
    string name;
    uint age;
    string add;
    uint don;
}

contract advmapping{
    mapping(address=>donar_dts) public acc_info;

    function set(string memory _name,uint _age,string memory _add,uint _don) public{
        acc_info[msg.sender]=donar_dts(_name,_age,_add,acc_info[msg.sender].don+_don);
    }

    function deleteInfo() public{
        delete acc_info[msg.sender];
    }
}