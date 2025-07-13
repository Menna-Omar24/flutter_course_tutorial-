void main() {
  //  امتى استخدامها لما يبقي عندي بيانات مبتتكررش unique
  Set <String> favColors = {'black', 'white', 'red', 'black'};
  favColors.add('yellow');
  favColors.remove('black');
  print(favColors);
}
