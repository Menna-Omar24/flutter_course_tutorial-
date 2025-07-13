import 'dart:io';

void main() {
  while (true) {
    try {
      stdout.write("Enter three floating-point numbers separated by commas (or type 'exit' to quit): ");
      String? input = stdin.readLineSync();

      if (input == null || input.trim().isEmpty) {
        print("Invalid input! Please enter three numbers separated by commas.");
        continue;
      }

      if (input.trim().toLowerCase() == 'exit') {
        print("Exiting the program. Goodbye! 👋");
        break;
      }

      List<double> numbers = input
          .split(',')
          .map((e) => double.tryParse(e.trim()))
          .where((e) => e != null)
          .cast<double>()
          .toList();

      if (numbers.length != 3) {
        print("Error: Please enter exactly three valid numbers.");
        continue;
      }

      numbers.sort();


      print("Sorted numbers: ${numbers.join(', ')}");
      break;
    } catch (e) {
      print("An unexpected error occurred. Please try again.");
    }
  }
}
