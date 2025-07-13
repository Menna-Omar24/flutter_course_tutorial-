import 'dart:io';

void main() {
  print('Enter numbers separated by spaces:');
  String input = stdin.readLineSync() ?? '';
  List<int> numbers = input.split(' ').map(int.parse).toList();

  if (numbers.length < 2) {
    print('The list must contain at least two elements.');
    return;
  }


  int smallest = numbers[0];
  int secondSmallest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    int number = numbers[i];

    if (number < smallest) {
      secondSmallest = smallest;
      smallest = number;
    } else if (number > smallest && number < secondSmallest) {
      secondSmallest = number;
    }
  }

  if (secondSmallest == smallest) {
    print('There is no second smallest element.');
  } else {
    print('The second smallest element is: $secondSmallest');
  }
}
