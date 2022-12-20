// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//Three ways: send,transact,call

/*
Send:
-It has limit of 2300 gas cost
-If any transaction crosses this limit then transaction is failed also the gas used is not reverted back(it is wasted)
and change in values of state variables is also not reverted back.
-For resolving this issue always use send within require var(for reverting changes and for saving gas)

Send---->if successful(true)--->else(false)--->returns bool value
*/


/*
Transfer:
-limit of 2300 gas cost
-do not return any type of bool value as of send
-revert back the values of state variables as well as gas cost
-No need to use required
*/

/*
Call:
-we will set the gas limit
-It will return 2 values: 
1. bool
2. bytes(data)
-disadv:
do not revert back the changes in state variable as well as gas cost
It always need to be used within required
*/

contract send_ether{

    //address payable public getter=payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    receive() external payable{}

    event log(uint);

    function checkbal() public view returns(uint){
        return address(this).balance;
    }

    function SEND(address payable getter) public payable{
        emit log(msg.value);
        bool sent=getter.send(msg.value);
        require(sent,"transaction failed");
    }

    function TRANSFER(address payable getter) public payable{
        emit log(msg.value);
        getter.transfer(msg.value);
    }

    function CALL(address payable getter) public payable{
        emit log(msg.value);
        (bool sent,)=getter.call{value:msg.value}("");
        require(sent,"transaction failed");
    }
}

contract getether{
receive() external payable{}

    function checkbal() public view returns(uint){
        return address(this).balance;
    }
}