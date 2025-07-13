import 'dart:io';

void main() {
  stdout.write('Enter Temperature in celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = celsiusToFahrenheit(celsius);
  print('IEEE: The temperature in Fahrenheit is $fahrenheit°F');
}

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
