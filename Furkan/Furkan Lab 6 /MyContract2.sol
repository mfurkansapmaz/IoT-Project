// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.25;

contract Animal { 
  function catchphrase() public pure returns (string memory) { 
    return "Nice animal!"; 
  } 
} 
 
//BabyAnimal inherits from Animal. That means that BabyAnimal will have access to both Animal and BabyAnimal functions. 
contract BabyAnimal is Animal { 
  function anotherCatchphrase() public pure returns (string memory) 
{ 
    return "BabyAnimals are so cute"; 
  } 
} 

//-----EXERCISE 13------
//contracts/MyContract2.sol
import "@openzeppelin/contracts/access/Ownable.sol"; // Import Ownable from the OpenZeppelin Contracts library
contract MyContract2 is Ownable { // Make Box inherit from the Ownable contract
uint256 private _value;
event ValueChanged(uint256 value);
constructor() Ownable(msg.sender) {}
// The onlyOwner modifier restricts who can call the store function
function store(uint256 value) public onlyOwner {
_value = value;
emit ValueChanged(value);
}
function retrieve() public view returns (uint256) {
return _value;
}
}

//-----EXERCISE 14------
contract UserValidation {
mapping(uint => uint) public age;
modifier olderThan(uint _age, uint _userId) {
require(age[_userId] >= _age, "User must be older than the specified age");_;
}
function validationUsers(uint _userId) public view olderThan(18, _userId) { 
}
}

