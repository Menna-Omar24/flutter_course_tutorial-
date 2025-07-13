import 'dart:io';

void main() {
  // my name is john 15 years old
  String name = 'menna';
  int age = 22;
  print('my name is $name and i am $age years old');

//   the total of 6 + 9 is 15
  int num1 = 6;
  int num2 = 9;
  int sum = num1 + num2;
  print('the total of $num1 + $num2 is $sum');

//   the total of 6 * 9 is 54
  int num3 = 6;
  int num4 = 9;
  int product = num3 * num4;
  print('the total of $num3 * $num4 is $product');

//   the total of 10 * 5 is 50
  int num5 = 10;
  int num6 = 5;
  int product2 = num5 * num6;
  print('the total of $num5 * $num6 is $product2');

//   salary is 1000$
  int salary = 1000;
  print('Salary is $salary');

//   round of 5.6 is 6
  double num7 = 5.6;
  print('round of $num7 is ${num7.round()}');

//   floor 5.9 is 5
  double num8 = 5.9;
  print('floor $num8 is ${num8.floor()}');

//   ceil 5.2 is 6
  double num9 = 5.2;
  print('ceil $num9 is ${num9.ceil()}');

//   convert 5 to double 5.0
  int num10 = 5;
  print('convert $num10 to double ${num10.toDouble()}');

  // paragraph
  print('''hello
my name is menna 
i am 22 years old''');

// is even , is odd
  int num11 = 20;
  if (num11 % 2 == 0) {
    print('$num11 is even');
  } else {
    print('$num11 is odd');
  }
  int num12 = 20;
  bool isEven = num12 % 2 == 0;
  if (isEven) {
    print('$num11 is even');
  } else {
    print('$num11 is odd');
  }

//   positive or negative
  int num13 = -10;
  if (num13 >= 0) {
    print('$num13 is positive');
  } else {
    print('$num13 is negative');
  }

  // grade 100 , 80
  int grade = 90;
  if (grade >= 90 && grade <= 100) {
    print('A');
  } else if (grade >= 80 && grade <= 89) {
    print('B');
  } else if (grade >= 70 && grade <= 79) {
    print('C');
  } else if (grade >= 60 && grade <= 69) {
    print('D');
  } else {
    print('F');
  }

  //  calculator
  int number1 = 10;
  int number2 = 5;
  int result1 = 0;
  String operator = '+';
  if (operator == '+') {
    result1 = number1 + number2;
  } else if (operator == '-') {
    result1 = number1 - number2;
  } else if (operator == '*') {
    result1 = number1 * number2;
  } else if (operator == '/') {
    result1 = number1 ~/ number2;
  } else {
    print('invalid operator');
  }

//   calculator
  print('Welcome To Dart Calculator');
  print('Enter input Number: ');
  double? input = double.tryParse(stdin.readLineSync()!);
  print('Enter First Number: ');
  double? n1 = double.tryParse(stdin.readLineSync()!);
  print("Enter operator (+, -, *, /):");
  String? operator1 = stdin.readLineSync()!;
  print('Enter Second Number: ');
  double? n2 = double.tryParse(stdin.readLineSync()!);
  if (n1 == null || n2 == null || operator1 == null || input == null) {
    print('Invalid input.');
    return;
  }
  // vacation friday
  // Enum Days = monday, "tuesday", "wednesday", "thursday", "saturday", "sunday" ;
  // List<String> weekDays = [
  //   'monday',
  //   'tuesday',
  //   'wednesday',
  //   'thursday',
  //   'saturday',
  //   'sunday'
  // ];
  //
  // for(String day in weekDays){
  //   if(
  //
  //   ){}
  // }

  // Problem 1: Multi-Tier Parking Fee Calculator
  //
  // Rules:
  //
  // First 2 hours: free
  //
  // Next 3 hours (hour 3–5): 10 per hour
  //
  // After that: 20 per hour
  // If parked on weekend, add 50 flat

  print("Enter number of hours parked:");
  int hours = int.parse(stdin.readLineSync()!);

  print("Enter day of the week:");
  String day = stdin.readLineSync()!.toLowerCase();

  int fee = 0;

  if (hours <= 2) {
    fee = 0;
  } else if (hours <= 5) {
    // 2 hours free, then 10 per hour for the remaining hours
    fee = (hours - 2) * 10;
  } else {
    // 2 hours free, 3 hours at 10, then rest at 20
    fee = (3 * 10) + ((hours - 5) * 20);
  }

  // Check if it's weekend
  if (day == "friday" || day == "saturday") {
    fee += 50;
  }

  print("Total parking fee: $fee EGP");
  //

  print("Enter speed limit:");
  int speedLimit = int.parse(stdin.readLineSync()!);

  print("Enter actual speed:");
  int actualSpeed = int.parse(stdin.readLineSync()!);

  print("Do you have a driving license? (yes/no):");
  String hasLicenseInput = stdin.readLineSync()!.toLowerCase();

  bool hasLicense = hasLicenseInput == "yes";

  int overSpeed = actualSpeed - speedLimit;
  int fine = 0;

  if (overSpeed <= 0) {
    print("OK");
    return;
  } else if (overSpeed > 20) {
    fine = 1000;
  } else if (overSpeed >= 10 && overSpeed <= 20) {
    fine = 500;
  }

  if (!hasLicense) {
    fine += 500;
  }

  print("Total fine: $fine EGP");

  double result;
  if (operator1 == '+') {
    result = add(n1, n2);
  } else if (operator1 == '-') {
    result = subtract(n1, n2);
  } else if (operator1 == '*') {
    result = multiply(n1, n2);
  } else if (operator1 == '/') {
    double divisionResult = n1 / n2;
    result = divisionResult;
  } else {
    print('invalid operator');
    return;
  }
  print('Result: ${result.toStringAsFixed(2)}');
}

double add(n1, n2) => n1 + n2;

double subtract(n1, n2) => n1 - n2;

double multiply(n1, n2) => n1 * n2;

double divide(n1, n2) {
  if (n2 == 0) {
    print('Error: can\'t divide by zero');
    return 0;
  }
  return n1 / n2;
}
