// Write a function named calculateArea that takes two parameters, length and width, both of type double. The function should return the area of a rectangle (length × width) as a double.
import 'dart:io';

// num -> int , double
void main() {
  stdout.write('Enter the length: ');
  double? length = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter the width: ');
  double? width = double.tryParse(stdin.readLineSync() ?? '');

  if (length == null || length <= 0 || width == null || width <= 0) {
    print('Error: Please enter positive numeric values for length and width');
    return;
  }
 double area= calculateArea(length, width);
  print('The area of the rectangle with length $length , width $width is: $area');
}

double calculateArea(length, width) {
  return length * width;
}
