import 'dart:io';

void main() {
  print('Enter numbers for the array, separated by spaces:');
  List<String> inputArray = stdin.readLineSync()!.split(' ');
  List<int> array = inputArray.map(int.parse).toList();

  int sum = 0;
  int count = array.length;

  for (int number in array) {
    sum += number;
  }

  double average = sum / count;

  print(average);
}
