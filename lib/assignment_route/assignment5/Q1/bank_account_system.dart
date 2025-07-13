class BankAccount {
  static int _idCounter = 0;
  int accountId;
  double balance;
  double interestRate;
  DateTime creationDate;
  double minBalance;

  BankAccount({
    required this.balance,
    this.interestRate = 0.03,
    this.minBalance = 100,
  })  : accountId = _generateId(),
        creationDate = DateTime.now();

  BankAccount.withoutBalance({
    this.interestRate = 0.03,
    this.minBalance = 100,
  })  : accountId = _generateId(),
        balance = 0,
        creationDate = DateTime.now();

  static int _generateId() {
    return ++_idCounter;
  }

  void calculateInterest() {
    double interest = balance * interestRate;
    balance += interest;
    print('Interest of $interest added. New balance: $balance');
  }

  TransactionStatus withdraw(double amount) {
    if (amount <= 0) {
      return TransactionStatus.invalidAmount;
    }
    if (amount > balance) {
      return TransactionStatus.insufficientBalance;
    }
    if ((balance - amount) < minBalance) {
      return TransactionStatus.belowMinimumBalance;
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
      case TransactionStatus.belowMinimumBalance:
        print(
            'Failed to $transactionType $amount. Balance would fall below minimum allowed.');
        break;
    }
  }

  @override
  String toString() {
    return 'Account ID: $accountId, Balance: $balance, Interest Rate: $interestRate, Created on: $creationDate';
  }
}

enum TransactionStatus {
  success,
  insufficientBalance,
  invalidAmount,
  belowMinimumBalance
}

void main() {
  BankAccount account1 =
      BankAccount(balance: 1000, interestRate: 0.05, minBalance: 200);
  account1.printTransactionResult(account1.deposit(500), 'Deposit', 500);
  account1.printTransactionResult(account1.withdraw(300), 'Withdraw', 300);
  account1.calculateInterest();
  print(account1);
  print('');
  BankAccount account2 =
      BankAccount.withoutBalance(interestRate: 0.04, minBalance: 100);
  account2.printTransactionResult(account2.deposit(1000), 'Deposit', 1000);
  account2.printTransactionResult(account2.withdraw(900), 'Withdraw', 900);
  account2.calculateInterest();
  print(account2);
  print('');
  BankAccount account3 = BankAccount(balance: 500);
  account3.printTransactionResult(account3.withdraw(450), 'Withdraw', 450);
  print(account3);
}
