
pragma solidity ^0.4.0;

contract Greeter{
    // Define variable greeting of the type string
    string public yourName;

    // this function runs when contract is executed
    function Greete() public{
        yourName="World";
    }

    function set(string name) public{
        yourName=name;
    }

    function hello() public constant returns (string){
        return yourName;
    }
}