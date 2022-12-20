// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    event log(string name,uint age);

    function fun1() public virtual {
        emit log("A.fun1",21);
    }

     function fun2() public virtual {
        emit log("A.fun2",21);
    }
}

contract B is A{
    function fun1() public virtual override {
        emit log("B.fun1",31);
        A.fun1();      //specifically calls function from contract A i.e fun1
    }

     function fun2() public virtual override {
        emit log("B.fun2",31);
        super.fun2();       //calls function from contract according to its order(right to left,dept first)
    }
}

contract C is A{
    function fun1() public virtual override {
        emit log("C.fun1",41);
    }

     function fun2() public virtual override {
        emit log("C.fun2",41);
    }
}

contract D is B,C{
    function fun1() public override(B,C) {
        emit log("D.fun1",10);
        B.fun2(); //direct calling
    }

     function fun2() public virtual override(B,C) {
        emit log("D.fun2",10);
        super.fun1();
    }
}