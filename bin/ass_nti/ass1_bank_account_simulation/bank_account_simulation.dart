import 'dart:io';

void main() {
  final account = createdAccount();

  String name = account['name'];
  int accountNumber = account['accountNumber'];
  String accountType = account['accountType'];
  double balance = account['balance'];

  bool exit = false;

  while (!exit) {
    showMenu();

    int choice =getPositiveInt('Choose an option: ');

    switch (choice) {
      case 1:
        balance = deposit(balance);
        break;
      case 2:
        balance = withdraw(balance);
        break;
      case 3:
        predictProfit(balance);
        break;
      case 4:
        showSummary(name, accountNumber, accountType, balance);
        break;
      case 5:
        print('Thank you for using the banking system. Goodbye!');
        exit = true;
        break;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync() ?? '';
}

String capitalizedWords(String text) {
  return text.trim().split(' ').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

String getValidText(String message) {
  String input;
  do {
    input = prompt(message).trim();
    if (input.isEmpty) print('Input Can\'t be empty');
  } while (input.isEmpty);
  return capitalizedWords(input);
}

int getPositiveInt(String message) {
  int? value;
  do {
    value = int.tryParse(prompt(message));
    if (value == null || value <= 0) print('Enter a positive number.');
  } while (value == null || value <= 0);
  return value;
}

double getPositiveDouble(String message) {
  double? value;
  do {
    value = double.tryParse(prompt(message));
    if (value == null || value < 0) print('Enter a valid number(0 or more).');
  } while (value == null || value < 0);
  return value;
}

Map<String, dynamic> createdAccount() {
  print('Welcome To The Bank Account Simulation!\n');

  String name = getValidText('Enter your name: ');
  int accountNumber = getPositiveInt('Enter account number: ');

  String type;
  do {
    type = prompt('Enter account type (Saving / Checking): ').toLowerCase();
    if (type != 'saving' && type != 'checking') {
      print('Invalid type. Please enter "Saving" or "checking".');
    }
  } while (type != 'saving' && type != 'checking');

  double initialBalance = getPositiveDouble('Enter initial balance: ');

  print("\nAccount Created Successfully!");
  print("Welcome, $name! Your account is ready to use.\n");

  return {
    'name': name,
    'accountNumber': accountNumber,
    'accountType': capitalizedWords(type),
    'balance': initialBalance
  };
}

void showMenu() {
  print('\n==================== Menu ====================');
  print('1. Deposit');
  print('2. Withdraw');
  print('3. Predict Future Balance');
  print('4. View Account Summary');
  print('5. Exit');
}

void showSummary(
    String name, int accountNumber, String accountType, double balance) {
  print('\n========== Account Summary ==========');
  print('Name           : $name');
  print('Account Number : $accountNumber');
  print('Account Type   : $accountType');
  print('Balance        : \$${balance.toStringAsFixed(2)}');
}

double deposit(double balance) {
  double amount = getPositiveDouble('Enter amount to deposit: ');

  balance += amount;
  print('Deposit successful. New balance: \$${balance.toStringAsFixed(2)}');

  return balance;
}

double withdraw(double balance) {
  double amount = getPositiveDouble('Enter amount to withdraw: ');

  if (amount > balance) {
    print('Insufficient balance. Withdrawal denied.');
  } else {
    balance -= amount;
    print(
        'Withdrawal successful. New balance: \$${balance.toStringAsFixed(2)}');
  }
  return balance;
}

void predictProfit(double balance) {
  int years = getPositiveInt('Enter number of years: ');
  double rate = getPositiveDouble('Enter annual profit rate (%):');

  double futureBalance = balance * (1 + (rate / 100 * years));
  int roundedBalance = futureBalance.round();

  print(
      'Predicted future balance after $years years: \$${futureBalance.toStringAsFixed(2)}');
  print('Rounded balance: \$$roundedBalance');
}
