import 'dart:io';

void main() {
  createdAccount();
}

String capitalizedWords(String text) {
  return text.trim().split(' ').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

void createdAccount() {
  String name = '';
  int accountNumber = 0;
  String? accountType = '';
  double? initialBalance = 0.0;

  print('Welcome To The Bank Account Simulation!\n');

  while (name.trim().isEmpty) {
    stdout.write('Enter Your Name: ');
    name = stdin.readLineSync()!;
    if (name.trim().isEmpty) {
      print('Name can\'t be empty. Please try again.');
    }
  }
  name = capitalizedWords(name);

  bool validAccountNumber = false;
  while (!validAccountNumber) {
    stdout.write('Enter Account Number: ');
    int? inputAccountNumber = int.tryParse(stdin.readLineSync()!);
    if (inputAccountNumber != null && inputAccountNumber > 0) {
      accountNumber = inputAccountNumber;
      validAccountNumber = true;
    } else {
      print('Invalid Account Number. Please enter a positive number.');
    }
  }

  bool validAccountType = false;
  while (!validAccountType) {
    stdout.write('Enter Account Type (Saving / Checking): ');
    String accountTypeInput = stdin.readLineSync()!;
    String formattedType = accountTypeInput.toLowerCase();

    if (formattedType == 'saving' || formattedType == 'checking') {
      accountType = capitalizedWords(formattedType);
      validAccountType = true;
    } else {
      print('Invalid Account Type. Please enter "Saving" or "Checking".');
    }
  }

  bool validInitialBalance = false;
  while (!validInitialBalance) {
    stdout.write('Enter Initial Balance: ');
    double? inputInitialBalance = double.tryParse(stdin.readLineSync()!);

    if (inputInitialBalance != null && inputInitialBalance >= 0) {
      initialBalance = inputInitialBalance;
      validInitialBalance = true;
    } else {
      print("Invalid Balance. Initial Balance must be 0 or more.");
    }
  }

  print("\nAccount Created Successfully!");
  print("Welcome, $name! Your account is ready to use.\n");
  print('==================== Account Summary ====================');
  print('Name: $name');
  print('Account Number: $accountNumber');
  print('Account Type: $accountType');
  print('Initial Balance: \$${initialBalance!.toStringAsFixed(2)}');
  print('=========================================================');


}
