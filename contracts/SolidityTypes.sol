// from git...
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.16;

contract SolidityTypes {

    // 1. fixed-size 
    bool isReady = true;
    uint a = 0;
    address addr;
    address payable addrPayable;
    bytes32 data;  // good to represents strings as limited string manipulation in solidity
    uint8[] colors = new uint8[](12);  // creates uint8 array of length 12


    // 2. variable-size
    string name; 
    bytes _data;  // represents any binary data without limit to length
    uint[] amounts; // variable sized array of uint
    mapping(address => uint) balanceOf; 


    // 3. user-defined data
    struct User {  // need to create individual user and add to a variable-size type such as array or mapping
        uint id;
        string name;
        uint[] friendIds;
    }

    enum Color {  // Color.Red, Color.Blue, etc. returns uint representing index
        Red,
        Green,
        Blue
    }


}
