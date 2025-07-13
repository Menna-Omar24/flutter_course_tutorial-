// class Human {
//   double? height;
//   double? weight;
//
//   int _numberOfArms = 2;
//   String? skinColor;
//   String? hairColor;
//
//   Human({double? height, double? weight, String? hairColor}) {
//     this.height = height;
//     this.weight = weight;
//     this.hairColor = hairColor;
//   }
//   // setter ---> مش مهتم ب ---> return type ---> لان الهدف من setter ---> انه يدي قيمة
//   // ازاي احسن من شكل methods ف هو وفر methods ل استدعاء القيمة وارجاع القيمة
//    set numberOfArms(int numberOfArms) {
//     if (numberOfArms <= 2 && numberOfArms >= 0) {
//       _numberOfArms = numberOfArms;
//     }
//   }
//
//   int getNumberOfArms() {
//     return _numberOfArms;
//   }
// }
