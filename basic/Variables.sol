pragma solidity ^0.8.1;

contract Variables {
    uint8 public myUint;
    bool public myBool;
    address public myAddress;

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function showBalance() public view returns(uint) {
        return myAddress.balance;
    }

    function setMyUint(uint8 _myUint) public {
        myUint = _myUint;
    }

    function decrement() public {
        unchecked {
            myUint--;
        }
    }

    function increment() public {
        unchecked {
            myUint++;
        }
    }

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }
}
