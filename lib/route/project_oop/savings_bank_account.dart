import 'bank_account.dart';

class SavingsBankAccount extends BankAccount {
  double minimumBalance;
  SavingsBankAccount(
    double balance, {
    this.minimumBalance = 1000,
  }) : super(balance: balance);

  @override
  bool withdraw(double amount) {
    if ((balance - amount) < minimumBalance) {
      print("Error, can't be less than minimum balance");
      return false;
    }
    return super.withdraw(amount);
  }

  @override
  bool deposit(double amount) {
    if (amount < 100) {
      print("Please, deposit at least 100");
      return false;
    }
    return super.deposit(amount);
  }
}
