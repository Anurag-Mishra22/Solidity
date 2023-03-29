// SPDX-License-Identifier: MIT

pragma solidity ^0.8; 

//Sample Smart Contract........................................>>>>>>

// there can be multiple contract, think it like a class
//Owner is the person who deploy this smart contract.

contract sample {

// address is the value type of owner.
//by public we are given a permission to read owner.
    address public owner;
//constructor is the special type of function which is called only one time at the starting
   constructor() {
 // msg.sender gives the address of the person who is deploying this smart contract      
       owner = msg.sender;
   }

   modifier onlyOwner() {
       require(msg.sender == owner,"not owner");
       _; // this says that if require part is true then move ahead.
   }

// while giving the name to parameter it should start with _ as it is standard.
   function setOwner(address _newOwner) public onlyOwner {
       require(_newOwner !=address(0),"invalid address");
       owner = _newOwner;
   }

   function onlyOwnerCanAccess () public onlyOwner{
       //code
   }

   function antOneCanAccess() public  {
       //code
   }

}