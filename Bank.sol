// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./ownable.sol";
import "./kil.sol";

contract Bank is Ownable, Kil {
    // Mapping to store user balances
    mapping(address => uint) public balances;

    // Function to deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balances[msg.sender] += msg.value;
    }

    // Function to withdraw a specific amount
    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
    function transfer(uint amount, address recipient) public {
    require(msg.sender != recipient, "You can't send to yourself");
    require(balances[msg.sender] >= amount, "Insufficient balance");
    balances[msg.sender] -= amount;
    balances[recipient] += amount;
}

    // Function to get the total contract balance
    function getTotalBalance() public view returns (uint) {
        return address(this).balance;
    }
}
