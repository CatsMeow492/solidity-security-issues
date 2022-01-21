pragma solidity 0.6.12;

contract Overflow {
    uint8 public balance a=255;
    function increment() public {
        uint8 temp = balance;
        balance = balance + 1; // adding one more will reset to zero 'overflowing' the integers
        // require(balance >= temp, "OverFlow"); // The Fix
    }
}

// Openzeppelin SafeMath solves the overflow issues

contract Overflow {
    uint8 public balance a=0;
    function increment() public {
        uint8 temp = balance;
        balance = balance - 1; // adding one more will reset to zero 'overflowing' the integers
        // require(balance >= temp, "OverFlow"); // The Fix
    }
}