// void main() {
//   // تحويل المتغير من non_nullable ل nullable ?
//   // int? num1=25; //default لو اخد القيمة مش هينفذ القيمة
//   int? num1;
//   int num2 = 12;
//   int result;
//   print(num2);
//   // الموضوع ممل جدا عشان بس اتشيك على القيمة
//   // if (num1 != null) {
//   //   result = num1;
//   // } else {
//   //   result = 15;
//   // }
//   // فى طريقة اسهل وهي ??
//   result = num1 ?? 15; // دى كده شبه else وif بطريقة مختصرة
//   // ?? بتقوله خلي بالك num1 اللى على الشمال لسه ب null خدلى القيمة اللى على اليمين اللى هي ب 15
//   print(result);
//   print(num1);//=
//   print(num1?.toDouble());
//   // ! على ضمنتي ان القيمة دي مش ب null
//   // واكيد لما يوصل هنا هياخد القيمة بتاعته قبل العملية
//   // num1 = 2; //اخد قيمته
//   // int result = num1! + num2;
//   // print(result);
// }
