/*
  // Problem 1: Multi-Tier Parking Fee Calculator
  //
  // Rules:
  //
  // First 2 hours: free
  //
  // Next 3 hours (hour 3–5): 10 per hour
  //
  // After that: 20 per hour
  // If parked on weekend,add50 flat
  */
import 'dart:io';

void main() {
  // print("Enter number of hours parked:");
  // int hours = int.parse(stdin.readLineSync()!);
  //
  // print("Enter day of the week:");
  // String day = stdin.readLineSync()!.toLowerCase();
  //
  // int fee = 0;
  //
  // if (hours <= 2) {
  //   fee = 0;
  // } else if (hours <= 5) {
  //   // 2 hours free, then 10 per hour for the remaining hours
  //   fee = (hours - 2) * 10;
  // } else {
  //   // 2 hours free, 3 hours at 10, then rest at 20
  //   fee = (3 * 10) + ((hours - 5) * 20);
  // }
  //
  // // Check if it's weekend
  // bool isWeekend = true;
  // if (day == "friday") {
  //   isWeekend = true;
  //   fee += 50;
  // } else {
  //   isWeekend = false;
  // }
  // print("Total parking fee: $fee EGP");

/*
Problem 2: Traffic Fine Calculator

Ask the user for:

Speed limit (int)

Actual speed (int)

Has driving license? (bool)


Rules:

If speed is within limit: "OK"

If speed is more than 20 over: fine = 1000

If 10–20 over: fine = 500

If no license:add+500
*/
    print("Enter speed limit:");
    int? speedLimit = int.tryParse(stdin.readLineSync()!);

    print("Enter actual speed:");
    int? actualSpeed = int.tryParse(stdin.readLineSync()!);

    print("Do you have a driving license? (yes/no):");
    String licenseInput = stdin.readLineSync()!.toLowerCase();

    if (speedLimit == null || actualSpeed == null) {
      print('Invalid input.');
      return;
    }

    bool hasLicense = licenseInput == "yes";
    int overSpeed = actualSpeed - speedLimit;
    int fine = 0;

    if (overSpeed <= 0) {
      print("OK");
    } else {
      if (overSpeed > 20) {
        fine = 1000;
      } else {
        if (overSpeed >= 10) {
          fine = 500;
        }
      }

      if (!hasLicense) {
        fine += 500;
      }

      print("Total fine: $fine EGP");
    }
  }
