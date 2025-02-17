 🏦 Bank Smart Contract

A Solidity smart contract that allows users to deposit, withdraw, and transfer Ether securely. This contract also includes an ownership system and a selfdestruct function.

 🚀 Features
 Deposit Ether – Users can add funds to their account.
 Withdraw Ether – Users can withdraw their balance.
 Transfer Funds – Users can send Ether to another address.
 Ownership System – Only the owner has special privileges.
 Destroy Contract – Owner can selfdestruct the contract and withdraw all funds.



 🛠️ Tech Stack
 Solidity (v0.8.26) – Smart contract logic.
 Ethereum – Blockchain network for deployment.
 MetaMask – For interacting with the contract.



 📜 Smart Contract Explanation

 📌 Files
1. `Bank.sol` – Main banking contract for deposits, withdrawals, and transfers.
2. `Ownable.sol` – Ownership control mechanism.
3. `Destroyable.sol` (Kil.sol) – Allows contract destruction by the owner.



 📌 Functions
 🔹 Bank.sol
 `deposit()` – Users can deposit Ether.
 `withdraw(amount)` – Users can withdraw their Ether if they have enough balance.
 `transfer(amount, recipient)` – Users can send Ether to another user.
 `getTotalBalance()` – Returns the total balance stored in the contract.

 🔹 Ownable.sol
 `onlyOwner` (modifier) – Restricts functions to the contract owner.

 🔹 Destroyable.sol (Kil.sol)
 `kill()` – Allows the owner to destroy the contract and withdraw all funds.



 📦 Deployment & Usage
# 1️⃣ Deploy the Smart Contract
1. Deploy `Ownable.sol` and `Destroyable.sol` first.
2. Deploy `Bank.sol` after linking the other two contracts.

# 2️⃣ Interact with the Contract
 Deposit ETH – Call `deposit()` and send Ether.
 Withdraw ETH – Call `withdraw(amount)`.
 Transfer ETH – Call `transfer(amount, recipient)`.
 Destroy Contract (Owner only) – Call `kill()`.



 ❗ Important Notes
 Users cannot transfer funds to themselves.
 Only the contract owner can destroy the contract.
 The selfdestruct function permanently removes the contract.



 📜 License
This project is opensource under the MIT License.

🚀 Developed by [0xSmartCoder](https://github.com/0xSmartCoder)
