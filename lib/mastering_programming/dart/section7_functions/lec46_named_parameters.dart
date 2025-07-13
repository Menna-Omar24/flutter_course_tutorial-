void main() {
  // مجرد ما انا خليته named بقا optional
  print(calculateFinalPrice(price: 50, discount: 10));
  print(calculateFinalPrice(price: 100, discount: 10));
  print(calculateFinalPrice(price: 100, discount: 15));
}

//           required --->price لازم تديلي قيمة  / default =0 optional parameters
double calculateFinalPrice({required double price, double discount = 0}) {
  double finalPrice = price - price * discount / 100;
  return finalPrice;
}
