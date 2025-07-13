void main() {
//   مطلوب احسب السعر النهائي --> هيديني سعر المنتج 50 وهيديني 5% discount
// final price
  print(calculateFinalPrice(100, 10));
  print(calculateFinalPrice(1587, 17.5));
  // اوقات ممكن ميبقاش فيه discount ف لازم اكتب قيمة 0
  // ازاي بقا اخليها optional يعني لما يبقي فيه discount اكتب القيمة ولما ميبقاش فيه مكتبش حاجة واسيبها فاضية عن طريق [ optional parameters]
  print(calculateFinalPrice(800, 0));
  print(calculateFinalPrice(800));
  print(calculateFinalPrice(500));
}
// لازم ادي optional في الاخر مينفعش اخلي في النص او الاول ولو عندي اتنين optional احطهم جنب بعض وافصل بينهم ب ,
//                                      [optional parameters]
double calculateFinalPrice(double price, [double discount = 0,int num3=0]) {
  double finalPrice = price - price * discount / 100;
  return finalPrice;
}
