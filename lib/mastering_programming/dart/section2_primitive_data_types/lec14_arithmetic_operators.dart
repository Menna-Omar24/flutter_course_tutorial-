void main() {
  // عملية الجمع
  int n1 = 15;
  int n2 = 10;
  int result = n1 + n2;
  print(result);
 // عملية الطرح
  int n3 = 15;
  int n4 = 10;
  int res = n3 - n4;
  print(res);
  // عملية الضرب
  int n5 = 15;
  int n6 = 10;
  int re = n5 * n6;
  print(re);
  // عملية القسمة
  int n7 = 15;
  int n8 = 10;
  // int get = n7 / n8; // اداني ايرور عشان نوع البيانات int والرقم اللى هيطلع عشري
  //وممكن احل المشكلة دي عن طريق ~ او تغيير نوع البيانات الى double
  int get = n7 ~/ n8; // كده انا بقوله ناتج القسمة خد منه الرقم الصحيح
  // double get = n7 / n8;
  print(get);

  // عملية باقى القسمة ينتج عنه قيمة int مينفعش double
  int n9 = 15;
  int n10 = 10;
  int find = n9 % n10;
  print(find);
}
