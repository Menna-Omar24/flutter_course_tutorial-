void main(){
  // لازم string تبدا بحرف كابيتل ---> String
  // String text ="menna omar is my name"; //---> double quotation
  // String text ='menna omar is my name'; ---> single quotation

  // String text ='menna's is my name'; --->error
  // هنا بقى عندى مشكلة عشان هو فاهم ان menna دى اخر quotation
  // ف الحل استخدم " " او استخدم \ backslash
  String text ='menna \'s is my name';
  print(text);
}