// Write a function named calculateArea that takes two parameters, length and width, both of type double. The function should return the area of a rectangle (length × width) as a double.
import 'dart:io';

void main() {
  stdout.write('Enter the length: ');
  double? length = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter the width: ');
  double? width = double.tryParse(stdin.readLineSync() ?? '');

  if (length == null || width == null || length <= 0 || width <= 0) {
    print('Error: Please enter positive numeric values for length and width');
    return;
  }

  double area = calculateArea(length, width);

  print(
      'The area of the rectangle with length $length and width $width is: $area');
}

double calculateArea(double length, double width) {
  return length * width;
}
