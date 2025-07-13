// // import 'dart:io';
//
// void main() {
//   List<int> divisibleNumbers = []; // قائمة لتخزين الأعداد القابلة للقسمة
//
//   // حلقة لمرور الأعداد من 100 إلى 1000
//   for (int number = 100; number <= 1000; number++) {
//     // التحقق مما إذا كان العدد يقبل القسمة على 5 و 6
//     if (number % 5 == 0 && number % 6 == 0) {
//       divisibleNumbers.add(number); // إضافة العدد إلى القائمة
//     }
//   }
//
//   // طباعة الأعداد القابلة للقسمة
//   print('Numbers divisible by both 5 and 6 between 100 and 1000 are:');
//   print(divisibleNumbers.join(' ')); // عرض الأعداد مفصولة بمسافة
// }
import 'dart:io';

void main() {
  for (int i = 100; i <= 1000; i++) {
    if (i % 5 == 0 && i % 6 == 0) {
      stdout.write('$i ');
    }
  }
}
