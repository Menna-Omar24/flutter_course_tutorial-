/*
  Problem 1: Multi-Tier Parking Fee Calculator

  Rules:

  First 2 hours: free

  Next 3 hours (hour 3–5): 10 per hour

  After that: 20 per hour
  If parked on weekend,add50 flat
 */
import 'dart:io';

void main() {
  print("Enter number of hours parked:");
  int hours = int.parse(stdin.readLineSync()!);

  print("Enter day of the week:");
  String day = stdin.readLineSync()!.toLowerCase();

  int fee = 0;

  if (hours <= 2) {
    fee = 0;
  } else if (hours <= 5) {
    fee = (hours - 2) * 10;
  } else {
    fee = (3 * 10) + ((hours - 5) * 20);
  }

  // Check if it's weekend
  bool isWeekend = true;
  if (day == "friday") {
    isWeekend = true;
    fee += 50;
  } else {
    isWeekend = false;
  }
  print("Total parking fee: $fee EGP");
}
