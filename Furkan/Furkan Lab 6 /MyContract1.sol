// SPDX-License-Identifier: MIT

//-----EXERCISE 1------
pragma solidity >=0.5.0 <0.8.0;

contract Factory { 
//-----EXERCISE 2------
  uint idDigits = 1234567890123456;
}

contract MyFirstExample { 
  uint myUnsignedInteger = 10; 
} 
contract Constants { 
    address public constant MY_ADDRESS = 
0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 
    uint public constant MY_UINT = 123; 
    
    uint x = 10 ** 2; // equal to 10^2 
    uint y = 10; 
    uint z = x * uint8(y); 
}       
//-----EXERCISE 3------
contract Modulus {
  uint idDigits = 1234567890123456;
  uint idModulus = 10**idDigits;
}

struct Person { 
  uint age; 
  string name; 
} 

contract Enum { 
    // Different shipping status 
    enum Status { 
        Pending,  // Returns uint 0 
        Shipped,  //  1 
        Accepted, //  2 
        Rejected, //  3 
        Canceled //  4 
    } 
 
    Status public status; 
 
         
    function get() public view returns (Status) { 
        return status; 
    } 
    // Update status by passing uint into input 
    function set(Status _status) public { 
        status = _status; 
    } 
    // You can update to a specific enum   
    function cancel() public { 
        status = Status.Canceled; 
    } 
    // delete resets the enum to its first value (e.g., 0) 
    function reset() public { 
        delete status; 
    } 
} 

//-----EXERCISE 4------
struct Product { 
  uint id; 
  string name; 
} 

contract Arrays {
// Fixed length array of 10 uint elements: 
uint[10] fixedArray; 
// Fixed length array of 10 strings: 
string[10] stringArray; 
// Dynamic array (no fixed size): 
uint[] dynamicArray; 

Person[] person; // dynamic array  

Person[] public people; // public array 

Person satoshi = Person(30, "Satoshi");

//-----EXERCISE 5------
Product[] public products; // public array 
}

contract Func {
    function sellProducts(string memory _name, uint _amount) public { 
    } 
    function processProducts() public {
        sellProducts("pipe", 100);
    }
}

contract Priv {
uint[] numbers; 
function _addNumberToArray(uint _number) private { 
numbers.push(_number); 
}
}

//-----EXERCISE 6------
contract newFunc {
    event NewProduct(uint indexed productId, uint id, string name);
    Product[] public products; // Define products array
    function _createProduct (uint _id, string memory _name) private {
        uint productId = products.length;
        products.push(Product(_id, _name));
        emit NewProduct(productId, _id, _name);
    }
}

contract additiveFuncs {
string course = "SEAS4.0"; 
function sayYourCourse() public view returns (string memory) { 
return course; 
}
}

//-----EXERCISE 7 & 8------
contract RandId {
    Modulus modulusContract = Modulus(0x1234567890123456789012345678901234567890); 
    function _generateRandomId (string memory _str, uint idModulus) public pure returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % idModulus;
    }
}

contract Events {
event IntegersAdded(uint x, uint y, uint result); 
function add(uint _x, uint _y) public returns (uint) { 
  uint result = _x + _y; 
 //Use the Solidity emit statement to trigger a previously defined event and pass data to it. 
  emit IntegersAdded(_x, _y, result); 
  return result; 
} 
}

//-----EXERCISE 9------
contract eventProduct {
event NewProduct(uint indexed productId, string name, uint id);
//the "_createProduct" funciton has been modified to emit the emit the NewProduct event
}

contract MappingFunc {
mapping (address => uint) public balance; 
mapping (uint => string) userIdToName; 
}

//-----EXERCISE 10------
contract productMapping {
mapping(uint => address) public productToOwner;
mapping(address => uint) public ownerProductCount;
}

contract MyFavoriteNumber { 
    mapping (address => uint) favoriteNumber; 
    //Anyone could call the function setMyNumber and store a uint in our contract,  which would be tied to their address 
    function setMyNumber(uint _myNumber) public { 
        favoriteNumber[msg.sender] = _myNumber; 
    } 
    function whatIsMyFavoriteNumber() public view returns (uint) { 
        return favoriteNumber[msg.sender]; 
    } 
} 

contract AccountsDemo { 
      address public whoDeposited; 
      uint public depositAmount; 
      uint public accountBalance;
function deposit() public payable {  // can receive payment, payable. Use the “deposit” button to transfer some Wei (1 ether is 10**18 wei). 
    whoDeposited = msg.sender; 
    depositAmount = msg.value; 
    accountBalance = address(this).balance; 
} 
} 

//-----EXERCISE 11------
contract owner {
mapping(uint => address) public productToOwner;
mapping(address => uint) public ownerProductCount;
function Ownership(uint _productId) public {
productToOwner[_productId] = msg.sender;
ownerProductCount[msg.sender]++;
}
}


contract IfElse { 
    function LessMore(uint x) public pure returns (uint) { 
        if (x < 10) { 
            return 0; //x is less than 10 
        } else if (x < 50) { 
            return 1; //x is less than 50 
        } else { 
            return 2; //x is more than or equal to 50 
        } 
    } 
 
    function LessMore10(uint _x) public pure returns (uint) { 
        if (_x < 10) { 
            return 1;   //x is less than 10 
        } else { 
            return 2; //x is 10 or more 
        }
    } 
} 

//-----EXERCISE 12------
contract contStructs {
mapping(uint => address) public productToOwner;
mapping(address => uint) public ownerProductCount;
Product[] public products;
function getProductsByOwner(address _owner) external view returns (uint[] memory) {
uint[] memory result = new uint[](ownerProductCount[_owner]);
uint counter = 0;
for (uint i = 0; i < products.length; i++) {
if (productToOwner[products[i].id] == _owner) {
result[counter] = i;
counter++;
}
}
return result;
}
}


