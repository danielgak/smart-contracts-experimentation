pragma solidity ^0.8.1;

contract SendMoneyExample {

    uint public balanceReceived;
    uint public lockedUntil;


    function pay() public payable {
        balanceReceived += msg.value;
        lockedUntil = block.timestamp + 30 seconds;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function exctractBalance() public {
        if(lockedUntil < block.timestamp ) {
            address payable to = payable(msg.sender);

            to.transfer(getBalance());
        }
    }

    function exctractBalanceToAddress(address payable _to) public {
        if(lockedUntil < block.timestamp ) {
            _to.transfer(getBalance());
        }
    }
}