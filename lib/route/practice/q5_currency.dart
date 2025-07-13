// //EX.5 Write a Dart program that asks the user to input a currency code (USD, EUR, or EGP) and an amount in that currency.
// The program should convert the amount to the other two currencies using the following exchange rates
//
// import 'dart:io';
//
// void main() {
//   const double usdToEgp = 30.85;
//   const double eurToUsd = 1.10;
//   const double eurToEgp = 33.97;
//   const double egpToUsd = 0.032;
//   const double egpToEur = 0.029;
//
//   print('enter currency code (USD,EUR,EGP)');
//   String currencyCode = stdin.readLineSync()!.toUpperCase();
//   print('Enter amount $currencyCode');
//   double amount = double.parse(stdin.readLineSync()!);
//   switch (currencyCode) {
//     case 'USD':
//       double amountUsdToEgp = amount * usdToEgp;
//       double amountUsdToEur = amount / usdToEgp;
//       print('$amount USD = $amountUsdToEgp EGP and $amountUsdToEur ERU');
//       break;
//     case 'EUR':
//       double amountEurToEgp = amount * eurToEgp;
//       double amountEurToUsd = amount * eurToUsd;
//       print('$amount EUR = $amountEurToEgp EGP and $amountEurToUsd USD');
//       break;
//     case 'EGP':
//       double amountEgpToUsd = amount * egpToUsd;
//       double amountEgpToEur = amount * egpToEur;
//       print('$amount EGP = $amountEgpToUsd USD and $amountEgpToEur EUR');
//       break;
//     default:
//       print(' invalid currency code ');
//   }
// }
import 'dart:io';

void main() {
  const double usdToEgp = 30.85;
  const double eurToUsd = 1.10;
  const double eurToEgp = 33.97;
  const double egpToUsd = 0.032;
  const double egpToEur = 0.029;

  print('Enter currency code (USD, EUR, EGP):');
  String currencyCode = stdin.readLineSync()!.toUpperCase();
  print('Enter amount in $currencyCode:');
  double amount = double.parse(stdin.readLineSync()!);

  switch (currencyCode) {
    case 'USD':
      double amountUsdToEgp = amount * usdToEgp;
      double amountUsdToEur = amount / eurToUsd;
      print('$amount USD = $amountUsdToEgp EGP and $amountUsdToEur EUR');
      break;
    case 'EUR':
      double amountEurToEgp = amount * eurToEgp;
      double amountEurToUsd = amount / eurToUsd;
      print('$amount EUR = $amountEurToEgp EGP and $amountEurToUsd USD');
      break;
    case 'EGP':
      double amountEgpToUsd = amount * egpToUsd;
      double amountEgpToEur = amount * egpToEur;
      print('$amount EGP = $amountEgpToUsd USD and $amountEgpToEur EUR');
      break;
    default:
      print('Invalid currency code');
  }
}

