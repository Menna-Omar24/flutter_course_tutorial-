import 'dart:io';

void main() {
  print('Enter numbers for the array, separated by spaces:');
  List<String> inputArray = stdin.readLineSync()!.split(' ');
  List<int> array = inputArray.map(int.parse).toList();

  print('Enter the value to check:');
  int valueToCheck = int.parse(stdin.readLineSync()!);

  if (array.contains(valueToCheck)) {
    print('Yes');
  } else {
    print('No');
  }
}
