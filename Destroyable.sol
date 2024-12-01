// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./ownable.sol";

contract Kil is Ownable {
    // Function to destroy the contract and send remaining balance to the owner
    function kill() public onlyOwner {
        address payable receiver = payable(owner());
        selfdestruct(receiver);
    }
}
