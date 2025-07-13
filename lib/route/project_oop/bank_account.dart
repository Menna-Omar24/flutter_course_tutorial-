import 'bank_system.dart';
import 'client.dart';

class BankAccount {
  double balance;
  late int accountID;
  static int idGenerator = 1000;
  late Client client;
  BankAccount({this.balance = 0}) {
    accountID = idGenerator;
    idGenerator++;
  }

  bool withdraw(double amount) {
    // validation
    if (amount > balance) {
      print("Error , your balance is insufficient");
      return false;
    }
    if (amount < 0) {
      print("Invalid amount");
      return false;
    }
    balance = balance - amount;
    return true;
  }

  bool deposit(double amount) {
    if (amount < 0) {
      print("Invalid amount");
      return false;
    }
    balance += amount;
    return true;
  }

  void viewDetails() {
    print("Account ID : $accountID");
    print("Balance : $balance");
    client.viewDetails();
    print(" ");
  }
}

main() {
  // cycle dependency
  BankSystem system = BankSystem();
  system.showMenu();
  print("");
}
