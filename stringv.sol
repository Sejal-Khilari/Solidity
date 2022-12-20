// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _string{   //if we have to use keyword as contract name then put _ before it
        string public str="Sejal";

        function showstr(string memory str1) public pure returns(string memory){
            return str1;
        } 

        //String is always stored in storage instead of stack/memory
        //Therefore while using string as a local var we need to specify memory keyword
        //so that the string is saved in memory otherwise it shows error
}