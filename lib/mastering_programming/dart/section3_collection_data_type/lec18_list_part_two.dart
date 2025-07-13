void main(){
  // البيانات بتتكرر عادى
  List <String> studentsName = ['menna','omar','hassan','omar'];
  //                              0       1       2       3
  //  اخر قيمة دايما بنقول
  //  n-1 ----> 3-1 =2
  studentsName.add('abdo');
  studentsName.remove('omar');
  print(studentsName[3]);
  print(studentsName);
}