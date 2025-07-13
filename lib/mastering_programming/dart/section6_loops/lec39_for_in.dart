void main() {
  // for in ---> list امتى استخدمها للمرور على محتويات
  List<String> names = ['menna', 'omar', 'hassan'];
  // لكل item في list ابتدي نفذ مجموعة الاكواد دي
  // [menna]=> item
  // var --> string , int , double
  // var --->datatype بتعرفني نوع  key words هي
  for (var item in names) {
    print('loop');
    print(item);
    // print(index);
    // مقدرش اجيب index عكس for العادية
    for(int i=0; i<names.length;i++){
      // هنا قدرت اكسس index عادي جدا
      print('index-----------');
      print(names[i]);
    }
  }
}
