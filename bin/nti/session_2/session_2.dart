/*

  */
import 'dart:io';

void main() {

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
