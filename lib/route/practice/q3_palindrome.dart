// //Ex.3: Ask the user for a string and print out whether this string is a palindrome or not.
void main() {
  palindrome('MenEm');
}

void palindrome(String r) {
  String reverse = '';
  for (int i = r.length - 1; i >= 0; i--) {
    reverse += r[i];
  }
  if (r.toLowerCase() == reverse.toLowerCase()) {
    print('yes');
  } else {
    print('no');
  }
}
// import 'dart:io';
//
// void main() {
//   print('Enter a string:');
//   String? inputString = stdin.readLineSync();
//
//   if (inputString != null && inputString.isNotEmpty) {
//     String reversedString = inputString.split('').reversed.join('');
//
//     if (inputString.toLowerCase() == reversedString.toLowerCase()) {
//       print('The string "$inputString" is a palindrome.');
//     } else {
//       print('The string "$inputString" is not a palindrome.');
//     }
//   } else {
//     print('Invalid input. Please enter a valid string.');
//   }
// }
