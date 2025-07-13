/*
Write a function named calculateArea that takes two parameters, length and width, both of type double.
The function should return the area of a rectangle (length × width) as a double.
*/
import 'dart:io';

calculateArea({required double length, required double width}) {
  return length * width;
}

void main() {
  print('Enter length:');
  double length = double.parse(stdin.readLineSync()!);
  print('Enter width:');
  double width = double.parse(stdin.readLineSync()!);
  double area = calculateArea(length: length, width: width);
  print('The area of the rectangle is : $area');
}
