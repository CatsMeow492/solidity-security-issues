pragma solidity 0.6.12;

contract A {
    uint public a;
    function fn1() public {
        a = 12;
    }
    function fn2() public {
        a=24;
    }
}

// If fn1 is called from the US and fn2 is called from 
// singapore at around the same time what will be the value of a?
// No one really knows...