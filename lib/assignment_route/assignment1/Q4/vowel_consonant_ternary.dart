import 'dart:io';

void main() {
  print("Enter an alphabet: ");
  String input = stdin.readLineSync()!.toLowerCase();

  String result = (input == 'a' || input == 'e' || input == 'i' ||
      input == 'o' || input == 'u')
      ? "The alphabet is a vowel"
      : "The alphabet is a consonant";

  print(result);
}
