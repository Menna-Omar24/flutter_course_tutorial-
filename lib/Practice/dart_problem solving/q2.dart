/*
Temperature Conversion :
Write a program that converts a temperature from Celsius to Fahrenheit using the
formula:
Fahrenheit = (Celsius × 9/5) + 32
Example:
Input: Celsius = 25
Output: IEEE: The temperature in Fahrenheit is 77°F
*/

import 'dart:io';

void main() {
  stdout.write('Enter Temp in celsius: ');
  double celsius = double.parse(stdin.readLineSync() ?? '');
  double fahrenheit = celsiusToFahrenheit(celsius);
  print(" IEEE: The temperature in Fahrenheit is $fahrenheit°F");
}

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
