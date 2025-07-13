void main() {
  // بنشا متغير المتغير بيشيل قيم محدودة
  // male , female
  String gender1 = 'female';
  print(gender1);
  // jan , feb , march ,...
  String month1 = 'jan';
  print(month1);
//   enum ---> لما الاقى نفسي هخزن مجموعة من القيم والقيم دي محدودة اقدر اعدهم كلهم وكمان معروف نوعهم عشان مقدرش ادخل قيم تانية
//  مقدرش اكسس قيم تانية ولا اكتب قيم تانية
  Gender gender = Gender.female;
  // افضل استخدام مع enum هي switch case لانها بتشك على قيم محددة
  if (gender == Gender.female) {
    print('this is a male');
  }
  switch (gender) {
    case Gender.female:
      break;
    case Gender.male:
      break;
  }
  Month month = Month.april;
  print(month);
}

enum Gender { male, female }

enum Month {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december
}
