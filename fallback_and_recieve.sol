// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//Fallback :take data in bytes also can send ERT if it is made payable
/*
It is executed when a non existent function is called on the contract
It is required to be marked as external
It has no name
It has no arguments
It can not return anything
It can be defined one per contract
If not marked payable,it will throw exception if contract recieves ether
It's main use is to directly send ETH to contract
*/

/*
Recieve is same as fallback but it does not take data as argument 
Payable is compulsory 
*/

contract fallback_recieve{

    event log(string _fun,address _sender,uint _val,bytes _data);

//if it comes with two parameters i.e data and ether both then fallback is executed
    fallback() external payable{
        emit log("fallback",msg.sender,msg.value,msg.data);
    }
    
//if there is only sending of ethers and no data then recieve is used
    receive() external payable{
        emit log("recieve",msg.sender,msg.value,"");
    }
}