// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.16;

contract Counter {
    uint public count;

    function inc() external {
        count++;
    }

}