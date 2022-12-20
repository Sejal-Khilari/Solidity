// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


//Types     Mycontract      Derived contract    another contract    outside world
//Private     Yes               No                  No                 No
//Internal    Yes               Yes                 No                 No
//External    No                 No                 Yes                Yes    only for functions not state variables
//Public     Yes                 Yes                Yes                 Yes

//Sv are internal by default

contract visibility{
    uint private x=10;
    uint internal y=100;
    uint public z=1000;

    function check1() private pure returns(string memory){
        return "private";
    }

    function check2() internal pure returns(string memory){
        return "internal";
    }

    function check3() external pure returns(string memory){
        return "external";
    }
    function check4() public pure returns(string memory){
        return "public";
    }

    // function checkall() public view returns(string memory){
    //     return check1();
    // }
}

contract B is visibility{
    // uint a=y;
    string s=check2();
}

contract C{
    visibility obj=new visibility();
    uint public a=obj.z();

    function anothercaller() public view returns(string memory){
        return obj.check3();
    }
}