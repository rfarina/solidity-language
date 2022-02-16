// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.16;

contract Functions {
    uint value;
 
    // Function visibility
    // private  - Not callable from outside the contract
    // internal - Within contract or inherited contracts
    // external - Callable from outside, or inside with this.function()
    // public   - Callable from outside or inside
    // default  - PUBLIC!

    // view cannot modify state
    function getValue() external view returns(uint) {
        return value;
    }

    // modifies data on the blockchain
    function setValue(uint _value) external {
        value  = _value;
    }

    function getNumbers() external pure returns(uint) {
        return 1 + 1;
    }


    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }

    // Contract payment functions
    function acceptPayment() external payable {
        // Solidity will add msg.value to contract balance
    }
    // receive() external payable {
    //     // this function will also add msg.value to contract balance
    //     // But, it can *only* receive ether payments
    // }
    // fallback() external payable {
    //     // this function will also add msg.value to contract balance
    //     // it is run in the case no other function was found to run

    //     // it can optionally have the "payable" keyword
    //     // it can execute other logic that "receive" cannnot run
    // }
}