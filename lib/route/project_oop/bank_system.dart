import 'dart:io';

import 'bank_account.dart';
import 'savings_bank_account.dart';
import 'client.dart';

class BankSystem {
  late List<BankAccount> accountsList;
  late List<Client> clientsList;
  BankSystem() {
    accountsList = [];
    clientsList = [];
    addTestData();
  }
  // data fake
  addTestData() {
    for (int i = 0; i < 20; i++) {
      BankAccount bankAccount = BankAccount(balance: i + 1000);
      Client client = Client(
          name: "Name $i", address: "Address $i", phoneNumber: "phone $i");
      bankAccount.client = client;
      client.account = bankAccount;
      accountsList.add(bankAccount);
      clientsList.add(client);
    }
  }

  showAllAccountsDetails() {
    for (int i = 0; i < accountsList.length; i++) {
      accountsList[i].viewDetails();
    }
  }

  BankAccount? searchAccountById(int accountId) {
    for (int i = 0; i < accountsList.length; i++) {
      if (accountsList[i].accountID == accountId) {
        return accountsList[i];
      }
    }
    return null;
  }

  createAccount() {
    print("Enter your phone number");
    String phone = stdin.readLineSync()!;
    print("Enter your name");
    String name = stdin.readLineSync()!;
    print("Enter your address");
    String address = stdin.readLineSync()!;
    print("Choose an account");
    print("1- basic bank account");
    print("2- savings bank account");
    int option = int.parse(stdin.readLineSync()!);
    BankAccount? account;
    if (option == 1) {
      print("Enter the balance");
      double balance = double.parse(stdin.readLineSync()!);
      account = BankAccount(balance: balance);
    } else if (option == 2) {
      print("Enter the balance");
      double balance = double.parse(stdin.readLineSync()!);
      print("Enter the balance");
      double minBalance = double.parse(stdin.readLineSync()!);
      account = SavingsBankAccount(balance, minimumBalance: minBalance);
    }
    if (account != null) {
      Client c = Client(name: name, address: address, phoneNumber: phone);
      account.client = c;
      c.account = account;
      accountsList.add(account);
      clientsList.add(c);
    }
  }

  showAccountDetails() {
    print("Enter your account id");
    int accountId = int.parse(stdin.readLineSync()!);
    BankAccount? account = searchAccountById(accountId);
    if (account == null) {
      print("Invalid account id");
    } else {
      account.viewDetails();
    }
  }

  deleteAccount() {
    print("Enter the your account id");
    int accountId = int.parse(stdin.readLineSync()!);
    BankAccount? account = searchAccountById(accountId);
    if (account == null) {
      print("Invalid account id");
    } else {
      accountsList.remove(account);
      clientsList.remove(account.client);
    }
  }

  withdraw() {
    print("Enter the your account id");
    int accountId = int.parse(stdin.readLineSync()!);
    BankAccount? account = searchAccountById(accountId);
    if (account == null) {
      print("Invalid account id");
    } else {
      print("Enter amount of money");
      double amount = double.parse(stdin.readLineSync()!);
      account.withdraw(amount);
    }
  }

  deposit() {
    print("Enter the your account id");
    int accountId = int.parse(stdin.readLineSync()!);
    BankAccount? account = searchAccountById(accountId);
    if (account == null) {
      print("Invalid account id");
    } else {
      print("Enter amount of money");
      double amount = double.parse(stdin.readLineSync()!);
      account.deposit(amount);
    }
  }

  void showMenu() {
    while (true) {
      print("1- Create Account");
      print("2- Show all accounts");
      print("3- Show specific account details");
      print("4- Delete Account");
      print("5- withdraw");
      print("6- deposit");
      print("7- exit");
      print("Please enter an option");
      int option = int.parse(stdin.readLineSync()!);
      if (option == 1) {
        createAccount();
      } else if (option == 2) {
        showAllAccountsDetails();
      } else if (option == 3) {
        showAccountDetails();
      } else if (option == 4) {
        deleteAccount();
      } else if (option == 5) {
        withdraw();
      } else if (option == 6) {
        deposit();
      } else if (option == 7) {
        return;
      }
    }
  }
}
