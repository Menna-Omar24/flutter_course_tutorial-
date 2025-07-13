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
//
//   set numberOfArms(int numberOfArms) {
//     if (numberOfArms <= 2 && numberOfArms >= 0) {
//       _numberOfArms = numberOfArms;
//     }
//   }
//
//   // arrow function => statement واحد
//   // ومش لازم ارجع return--> لانها بستخدم مع functions العادية
//   // لان functions العادية { بكتب مجموعة من الاكواد } فبالتالي بعد ما بخلص محتاجة اكتب اي اللى بيتعمله return
//
//   int getNumberOfArms() => _numberOfArms;
// }
