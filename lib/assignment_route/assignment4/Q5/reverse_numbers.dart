import 'dart:io';

void main() {
  List<int> numbers = [];

  print('Enter 10 numbers:');

  for (int i = 0; i < 10; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  List<int> reversedNumbers = numbers.reversed.toList();

  print('Numbers in reverse order:');
  print(reversedNumbers.join(' '));
}
