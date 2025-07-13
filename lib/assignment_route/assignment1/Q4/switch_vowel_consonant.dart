import 'dart:io';

void main() {
  print("Enter an alphabet: ");
  String input = stdin.readLineSync()!.toLowerCase();

  switch (input) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print("The alphabet is a vowel");
      break;
    default:
      print("The alphabet is a consonant");
  }
}
