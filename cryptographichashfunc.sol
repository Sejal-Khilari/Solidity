// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
Solidity Inbuild cryptographic hash function
1.Keccak256
2.Sha256
3.Ripemd160
*/

/*
Keccak256
Input---bytes
Output---hash 32bytes
*/

/*
Sha256
Input---bytes
Output---hash 32bytes
different hash is generated for both func even if same input is given
*/

/*
Ripemd160
Input---bytes
Output---hash 20bytes
*/

/*
Use of hash function
-contract signature
-creating unique id
*/

/*
Conversion data into bytes
-abi.encode
-abi.encodepacked
*/

contract hashfun{

    function hashKeccak256(uint _x,string memory _name,address _add) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_x,_name,_add));
    }

    function hashSha256(uint _x,string memory _name,address _add) public pure returns(bytes32){
        return sha256(abi.encodePacked(_x,_name,_add));
    }

    function hashRipemd160(uint _x,string memory _name,address _add) public pure returns(bytes20){
        return ripemd160(abi.encodePacked(_x,_name,_add));
    }
}