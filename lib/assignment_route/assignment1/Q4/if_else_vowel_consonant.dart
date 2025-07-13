import 'dart:io';

void main() {
  print("Enter an alphabet: ");
  String input = stdin.readLineSync()!.toLowerCase();

  if (input == 'a' || input == 'e' || input == 'i' ||
      input == 'o' || input == 'u') {
    print("The alphabet is a vowel");
  } else {
    print("The alphabet is a consonant");
  }
}
