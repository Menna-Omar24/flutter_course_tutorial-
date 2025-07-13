enum TransactionStatus { success, insufficientBalance, invalidAmount }

class BankAccount {
  int accountId;
  double balance;

  BankAccount({required this.accountId, required this.balance});

  BankAccount.withoutBalance(this.accountId) : balance = 0.0;

  TransactionStatus withdraw(double amount) {
    if (amount <= 0) {
      return TransactionStatus.invalidAmount;
    }
    if (amount > balance) {
      return TransactionStatus.insufficientBalance;
    }
    balance -= amount;
    return TransactionStatus.success;
  }

  TransactionStatus deposit(double amount) {
    if (amount <= 0) {
      return TransactionStatus.invalidAmount;
    }
    balance += amount;
    return TransactionStatus.success;
  }

  void printTransactionResult(
      TransactionStatus status, String transactionType, double amount) {
    switch (status) {
      case TransactionStatus.success:
        print(
            '$transactionType $amount successfully. Current Balance: $balance');
        break;
      case TransactionStatus.insufficientBalance:
        print('Failed to $transactionType $amount. Insufficient balance.');
        break;
      case TransactionStatus.invalidAmount:
        print('Failed to $transactionType $amount. Invalid amount.');
        break;
    }
  }

  @override
  String toString() {
    return 'Account ID: $accountId, Balance: $balance';
  }
}

void main() {
  BankAccount account1 = BankAccount(accountId: 1, balance: 1000);
  account1.printTransactionResult(account1.deposit(500), 'Deposit', 500);
  account1.printTransactionResult(account1.withdraw(300), 'Withdraw', 300);
  print(account1);
  print('');
  BankAccount account2 = BankAccount.withoutBalance(2);
  account2.printTransactionResult(account2.deposit(1000), 'Deposit', 1000);
  account2.printTransactionResult(account2.withdraw(200), 'Withdraw', 200);
  print(account2);
}
