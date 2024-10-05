# Simple Wallet Contract

The Simple Wallet contract serves as a basic digital wallet on the Ethereum blockchain. It allows the owner to deposit Ether, withdraw funds, and check the wallet's balance. This contract is foundational for understanding ownership, fund management, and basic access control in Solidity.

## Purpose

The Simple Wallet contract provides a secure way to manage Ether funds. It is ideal for individuals and small projects that require centralized control over funds, while also serving as a great educational tool for learning about Solidity and smart contract development.

## Functionality

- **Ownership:** The contract establishes an owner upon deployment, typically the deployer's address.

- **Deposits:** Anyone can send Ether to the contract, effectively depositing funds into the wallet.

- **Withdrawals:** Only the owner can withdraw a specified amount of Ether from the wallet.

- **Balance Inquiry:** Any user can check the current Ether balance of the wallet.

## Use Cases

- **Personal Savings:** Individuals can use it to manage their personal Ether funds securely.

- **Basic Fund Management:** Useful for small projects where centralized control over funds is necessary.

- **Educational Purposes:** Ideal for learning about Solidity’s access control, Ether transfers, and contract state management.

## Key Features

- **Access Control:** The `onlyOwner` modifier ensures that only the contract owner can perform withdrawals, preventing unauthorized access.

- **Ether Management:** Functions to deposit and withdraw Ether demonstrate handling of native cryptocurrency within smart contracts.

- **State Visibility:** The `getBalance` function allows transparency by letting anyone view the contract’s Ether balance.

