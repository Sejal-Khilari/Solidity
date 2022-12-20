// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Enum{ //user defined datatype

    enum Status{ //name should always start with uppercase char
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel
    }

    Status status;

    function getstatus() public view returns(Status){
        return status;
    }

    function setstatus(Status _status) public{
        status=_status;
    }

    function rej() public{
        status=Status.Rejected;
    }

    function reset() public{
        delete status;
    }
}