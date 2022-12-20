// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//Event--cant access,cant ....
contract Event{
    event balance(address acc,string message,uint val);

    function setval(uint _val) public{
        emit balance(msg.sender,"has value",_val);
    }
}

contract chatApp{
    //can use indexed keyword only for 3 values min
    event chat(address indexed from,address to,string message);

    function set(address _to,string memory _message) public{
            emit chat(msg.sender,_to,_message);
    }
}
