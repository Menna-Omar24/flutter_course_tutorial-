void main() {
  //  null safety ---> null حماية من
  // String name;
  int? num1; //---> null
  // [null] => name
  // num1 ---> null
  //non_nullable ف ازاى احوله ل
  // عن طريق ؟
  int num2 = 15;
  // non_nullable
  if (num1 != null) {
    // لو بيساوى null متعملش اي حاجة
    // لو مش بيساوي null ابدا نفذ
    int result = num1 + num2;
    print(result);
  }
}
