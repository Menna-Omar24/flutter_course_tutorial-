void main() {
  print('*** declare and initialize ***');
  /*
  *** declare and initialize ***
  dataType variableName1 = value;
  */
  int num1 = 10;
  print('int= $num1');

  print(' _______________________________________________________________');
  // _________________________________________________________________

  print('*** declare only , assign value(initialize variable) ***');

  /*
  *** declare only , assign value(initialize variable) ***
   dataType variableName2;  // declare only
    variableName2 = value;  // assign value(initialize variable)
    */

  int num2;
  num2 = 5;
  print('int=$num2');

  print(' _______________________________________________________________');
  // _________________________________________________________________

  double n;
  n = 5;
  print('double= $n');

  /*
  int y;
  y=5.5;
  print(y);
   */

  print(' _______________________________________________________________');
  // _________________________________________________________________
  print('*** String ****');
  // datatypes ----> int , double , String , bool
  // String ---> ' Name ' , " Name " ,
  // ''' Name ''' , " " " Name " " " ,

  String name = 'name';
  // name=5;
  name = '5';
  name = "5";
  name = """5""";
  name = '''5''';
  name = 5.toString();
  print("String= $name");
  print(' _______________________________________________________________');

  // _________________________________________________________________
  print('*** int add ***');
  // int
  int n1 = 5;
  int n2 = 10;
  int n3 = n1 + n2;
  print('int= $n3');
  print(' _______________________________________________________________');

  // _________________________________________________________________
/*
int , int ==> int
int , double ==> double
double , double ==> double
 */
  print('*** double add ***');
  double x1 = 6;
  int x2 = 20;
  double x3 = x1 + x2;
  print("double= $x3");

  print(' _______________________________________________________________');
  // _________________________________________________________________
  /*
  double nu1 = 6;
  int nu2 = 20;
  int nu3 = nu1 + nu2;
  print(nu3);
  */

  print('*** int add .round() ***');

  double nu1 = 6.5;
  int nu2 = 20;
  int nu3 = (nu1 + nu2).round();
  print('int= $nu3');

  print(' _______________________________________________________________');
  // _________________________________________________________________

  print('*** .round() .ceil() .truncate() ***');
  print(' _______________________________________________________________');

  print('*** .round() ***');
  print(' _______________________________________________________________');
  // اعلى من 5 باخد الرقم الاعلى
  // اقل من 5 باخد الرقم الاقل
  print('*** .round() High 5 ***');

  double number1 = 6.5;
  int number2 = 20;
  int number3 = (number1 + number2).round();
  print('int (6.5) High 5 (HIGH_NUM)===> $number3');
  print(' _______________________________________________________________');

  print('*** .round() low 5 ***');

  double number4 = 6.4;
  int number5 = 20;
  int number6 = (number4 + number5).round();
  print('int (6.4) low 5 (LOW_NUM)===> $number6');
  print(' _______________________________________________________________');

  print('*** .ceil() ***');
  print(' _______________________________________________________________');
  // اقل من 5 باخد الرقم الاعلى
  print('*** .ceil() HigherNum ***');
  double number7 = 6.5;
  int number8 = 20;
  int number9 = (number7 + number8).ceil();
  print('int (6.5) High 5 (HIGH_NUM) ===> $number9');
  print(' _______________________________________________________________');

  print('*** .ceil() low 5 ***');
  double number10 = 6.4;
  int number11 = 20;
  int number12 = (number10 + number11).ceil();
  print('int (6.4) low 5 (HIGH_NUM)===> $number12');
  print(' _______________________________________________________________');

  print('*** .ceil() low 5 ***');
  double number13 = 6.2;
  int number14 = 20;
  int number15 = (number13 + number14).ceil();
  print('int (6.2) low 5 (HIGH_NUM) ===> $number15');
  print(' _______________________________________________________________');

  print('*** .ceil() low 5 ***');
  double number16 = 6.0;
  int number17 = 20;
  int number18 = (number16 + number17).ceil();
  print('int (6.0) low 5 (LOW_NUM)===> $number18');
  print(' _______________________________________________________________');

  print('*** .truncate() ***');
  print(' _______________________________________________________________');
  // اعلى من 5 باخد القيمة الاقل
  print('*** .truncate() high 5 ***');
  double number19 = 6.6;
  int number20 = 20;
  int number21 = (number19 + number20).truncate();
  print('int (6.6) High 5 (LOW_NUM)===> $number21');
  print(' _______________________________________________________________');

  print('*** .truncate() high 5 ***');
  double number22 = 6.9;
  int number23 = 20;
  int number24 = (number22 + number23).truncate();
  print('int (6.9) high 5 (LOW_NUM)===> $number24');
  print(' _______________________________________________________________');

  // % باقى القسمة
  /*
  5 % 3
  5 / 3 = 1.6
  1 ==> int
  1 * 3 = 3
  5 - 3 = 2
  2 ==> %
  (1)2
   */

  // print(' _______________________________________________________________');

  /*
  6 % 4
  6 / 4 = 1.5
  1==> int
  1 * 4 = 4
  6 - 4 = 2
  2 ==> %
  (1)2
   */

  // print(' _______________________________________________________________');

  /*
  20 % 6
  20 / 6 = 3.3
  3==> int
  3 * 6 = 18
  20 - 18 = 2
  2 ==> %
  (3)2
   */

  // print(' _______________________________________________________________');

  /*
  8 % 4
  8 / 4 = 2
  0 ==> %
   */

  // print(' _______________________________________________________________');

  /*
  double present1 = 6.0;
  int present2 = 20;
  int present3 = present1 % present2; //error(int) => double
  print('present% = $present3');
   */

  // print(' _______________________________________________________________');

  double present1 = 6.0;
  int present2 = 20;
  double present3 = present1 % present2;
  print('present% = $present3');

  print(' _______________________________________________________________');

// / القسمة
  /*
  int division1 = 6;
  int division2 = 20;
  int division3 = division1 / division2; //error(int)=> double
  print(division3);
   */
  int division1 = 6;
  int division2 = 20;
  double division3 = division1 / division2; //error(int)=> double
  print('division= $division3');
  print(' _______________________________________________________________');
  // bool ==> true , false
  bool x = true;
  bool y = false;
  // bool n10 = 10; //error(bool != int)
  bool n10 = 10 > 5;
  print('bool(int)= $n10');
  print(' _______________________________________________________________');
  bool n15 = !(10 > 5);
  print('bool !(int)= $n15');
  print(' _______________________________________________________________');
  y = x;
  // f = t
  print('assign(y=x) =$y');
  print(' _______________________________________________________________');
  y = !x;
  // f = !t(f)
  print('assign(y=!x) =$y');
  print(' _______________________________________________________________');
}
