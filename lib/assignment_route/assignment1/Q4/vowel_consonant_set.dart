import 'dart:io';

void main() {
  var vowels = {'a', 'e', 'i', 'o', 'u'};
  print("Enter an alphabet: ");
  String input = stdin.readLineSync()!.toLowerCase();

  if (vowels.contains(input)) {
    print("The alphabet is a vowel");
  } else {
    print("The alphabet is a consonant");
  }
}
