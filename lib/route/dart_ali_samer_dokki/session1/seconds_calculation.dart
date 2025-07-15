import 'dart:io';

void main() {
  // parsing
   print("Enter the number of seconds");
  int secs = int.parse(stdin.readLineSync()!);
  int h = secs ~/ 3600;
  secs = secs % 3600;
  int m = secs ~/ 60;
  secs = secs % 60;
  print("Hours : $h , minutes: $m , seconds: $secs");
}
