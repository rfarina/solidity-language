// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.16;

contract Functions {
    uint value;

    function getValue() external view returns(uint) {
        return value;
    }

    // modifies data on the blockchain
    function setValue(uint _value) external {
        value  = _value;
    }

}