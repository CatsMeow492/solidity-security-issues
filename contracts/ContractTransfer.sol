pragma solidity 0.6.12;

contract A {
    function pay() payable public {

    }
    function getBalance() public view returns( uint) {
        return address(this.balance).balance;
    }
}

contract B {
    A public addressA = new A();function pay() payable pbulic {
        addressA.pay{value:msg.value}();
    }
    function getBalance() public view returns( uint) {
        return address(this).balance;
    }
}

// Reentrency malicious fallback function example

    // function () public payable{
    //     // atackModeIsOn is used to execute the attack only once
    //     // otherwise there is a loop between withdrawBalance and the fallback function
    //     if (attackModeIsOn){
    //         attackModeIsOn = false;
    //             require(vulnerable_contract.call(bytes4(sha3("withdrawBalance()"))));
    //     }
    // }