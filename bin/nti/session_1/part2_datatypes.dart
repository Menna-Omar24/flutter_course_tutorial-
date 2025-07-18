void main() {
  // input => processing => output
  // data => processing => result

  /*
  📌 Basic Data Types in Dart:
  - int: whole numbers (e.g. 1, 22, -5)
  - double: decimal numbers (e.g. 3.14, 0.5)
  - String: text values (e.g. 'hello', "Dart")
  - bool: true or false
  - var: infers the data type automatically
  - dynamic: can hold any data type and may change
  */

  // ✅ Variable Declarations
  int age = 22;
  double rate = 4.5;
  double pi = 13;
  String name = 'menna';
  bool isWeekend = true;

  /*
  ❌ Invalid variable names:
  - 1name           → cannot start with a number
  - name1.2         → special characters like { ., $, @, #, %, &, *, +, - } are not allowed

  ✅ Valid variable names:
  - name1, name123456, first1name, _name, _name_, menna_omar
  */

  /*
  ✨ Naming Conventions:
  - camelCase   → firstName, studentGrade        (frontend)
  - snake_case  → first_name, student_grade      (backend)
  - PascalCase  → FirstName, StudentGrade        (OOP)
  */

  // ✅ String Interpolation
  String name1 = 'menna';
  int age1 = 15;
  double height = 180;

  print('my name is ' + name);          // Concatenation
  print('my name is $name');            // Interpolation

  // ❌ Error: cannot add String + int directly
  // print('my name is' + name +'and my age is'+age);

  // ✅ Casting int to String
  print('my name is ' + name + ' and my age is ' + age.toString());

  // ✅ Preferred way: Interpolation
  print('my name is $name and my age is $age');
  print('my name is $name and my age is $age and my height is $height');
  print('my name is $name and my age is $age and my height is $height in cm');
  print('my name is $name and my age is $age and my height is $height /100 in m');
  print('my name is $name and my age is $age and my height is ${height / 100} in m');

  print("==============");

  // ✅ Casting int to double
  // double n1 = age;   // ❌ Error
  double n1 = age * 0.1;
  double n2 = age * 1.0;
  double n3 = age * 1;
  double n4 = age.toDouble();  // ✅ Best method
  double n5 = age + 1;

  print('Casting int to double:');
  print('n1: $n1,\nn2: $n2,\nn3: $n3,\nn4: $n4,\nn5: $n5');
  print("==============");

  // ✅ Casting double to int
  int height1 = 180;
  int h = height1.toInt();
  print('h (180): $h');

  int h1 = height1.toInt();   // 180
  int h2 = height1.round();  // 180
  int h3 = height1.ceil();   // 180
  int h4 = height1.floor();  // 180

  print('From height1 (180):');
  print('toInt: $h1,\nround: $h2,\nceil: $h3,\nfloor: $h4\n');

  // ✅ Example with decimal: 180.4
  double height3 = 180.4;
  int h_2 = height1.toInt(); // still 180 (not height3)
  print('h (180.4): $h_2');

  int h10 = height3.toInt();      // 180
  int h11 = height3.round();     // 180
  int h12 = height3.ceil();      // 181
  int h13 = height3.floor();     // 180
  int h14 = height3.truncate();  // 180

  print('From height3 (180.4):');
  print('toInt: $h10,\nround: $h11,\nceil: $h12,\nfloor: $h13,\ntruncate: $h14\n');

  // ✅ Example with decimal: 180.5
  double height2 = 180.5;
  int h_1 = height1.toInt(); // still 180
  print('h (180.5): $h_1');

  int h5 = height2.toInt();      // 180
  int h6 = height2.round();     // 181
  int h7 = height2.ceil();      // 181
  int h8 = height2.floor();     // 180
  int h9 = height2.truncate();  // 180

  print('From height2 (180.5):');
  print('toInt: $h5,\nround: $h6,\nceil: $h7,\nfloor: $h8,\ntruncate: $h9\n');

  print("==============");

  // ✅ Casting String to int / double
  print('Casting String to int and double:');
  int x = int.parse('4'); // ✅ valid int string
  print(x);               // 4
  print(x + 6);           // 10

  // int y = int.parse('4.5'); // ❌ Error: invalid int string
  // ✅ Solution:
  double y = double.parse('4.5');
  print(y + 6); // 10.5
}
