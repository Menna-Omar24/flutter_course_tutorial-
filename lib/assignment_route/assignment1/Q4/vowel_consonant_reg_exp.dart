import 'dart:io';

void main() {
  print("Enter an alphabet: ");
  String input = stdin.readLineSync()!.toLowerCase();

  RegExp vowelExp = RegExp(r'[aeiou]');

  if (vowelExp.hasMatch(input)) {
    print("The alphabet is a vowel");
  } else {
    print("The alphabet is a consonant");
  }
}
