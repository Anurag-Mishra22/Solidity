// SPDX-License-Identifier: MIT

pragma solidity ^0.8; 

//data Types -> values & references

contract valueTypes {
    bool public boolTemp = true;

    //by default range of uint -> 0-2^256 -1
    uint public temp = 243;

    //by default range of int -> -2^255 to 2^256 -1
    int public temp2 = 156;

     //  takes value in hexadecimal
    address public addr =0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //takes value in hexadecimal
    bytes32 public b32;
    
    //there is no concept of null in solidity
}
