// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract globalvar{
    address public myadd= msg.sender;
    uint public time=block.timestamp;
    uint public diff=block.difficulty;
    uint public gascost=tx.gasprice;
}