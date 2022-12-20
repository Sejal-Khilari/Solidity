// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Modifier{


    modifier samecode{
        for(uint i=0;i<10;i++){
            //code;
        }
        _;   //It is used as a reminder to a function to return again into the function and execute the remaining code of function
            //and then again return back to check if some code is remain to execute in modifier

        //code
    }


//sequence:
//1)whenever modifier is there in function signature execute modifier
//2)execute till _;
//3)again return to function and execute remaining part
//4) go to modifier again if there is some part remain to execute after _; sign
//5)Execute that reaming part

    function fun1() public samecode pure returns(string memory){
        
        return "Hii I am in fun1";
    }

    function fun2() public samecode pure returns(uint _x){
        _x=20;
    }

    function fun3() public view returns(address){  //view is used as msg.sender is gloval var
        return msg.sender;
    }
}