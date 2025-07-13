class Human {
  double? height;
  double? weight;

  //  عن طريق ان اخلى المتغير ده private واخده واحطه في ملف لوحده عشان محدش يقدر يكسس القيمة دي
  int _numberOfArms = 2;
  String? skinColor;
  String? hairColor;

  Human({this.height, this.weight, this.hairColor});

  // مسؤلة عن استقبال القيمة
  void setNumberOfArms(int numberOfArms) {
    // قبل ما اخد اي قيمة اتحقق من الشرط عشان مقبلش اي قيمة
    //        2,1,0 ----- 0,1,2
    if (numberOfArms <= 2 && numberOfArms >= 0) {
      _numberOfArms = numberOfArms;
    }
  }

//   methods---> ترجع القيمة
  int getNumberOfArms() {
    return _numberOfArms;
  }
}
