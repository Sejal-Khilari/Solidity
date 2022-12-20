// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*constant
used to make value of state variable const
Inline value only
gas cost is low
*/

/*
immutable
used to make value of state variable const
Inline value as well as using contructor
So that it can be called at time of deployment
gas cost is more as compared to constant
*/

//gas cost seq: simple > immutable > constant

contract Immutable{
    address public immutable owner;

    constructor(address _owner){
        owner=_owner;
    }
}