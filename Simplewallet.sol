// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    // Address of the owner of the wallet
    address public owner;

    // Constructor sets the contract deployer as the owner
    constructor() {
        owner = msg.sender;  // msg.sender refers to the person who deploys the contract
    }



    msg.sender
    msg.data
    msg.value
    msg.gas
    



    // Modifier to restrict access to owner-only functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Function to allow deposits into the wallet
    function deposit() public payable {}

    // Function to withdraw a specified amount of Ether from the wallet, only callable by the owner
    function withdraw(uint _amount) public onlyOwner {
        require(_amount <= address(this).balance, "Insufficient balance");
        payable(msg.sender).transfer(_amount);  // Transfers Ether to the owner's address
    }

    // Function to check the current balance of the wallet
    function getBalance() public view returns (uint) {
        return address(this).balance;  // Returns the balance of the contract
    }
}
