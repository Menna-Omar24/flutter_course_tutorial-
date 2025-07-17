void main()
{
  // int, double, String, bool
  // DataType variableName = value ;
  // special characters are not allowed in variable names
  // example: $ , @, #, %, &, *, etc. + , - , etc.

  // camel case example: ahmed, name, from 2 words: studentName, firstName, firstStudentName
  // snake case example: ahmed_name, student_name, first_student_name
  // PascalCase example: Name, AhmedName, StudentName, FirstStudentName

  String name = "ahmed";
  int age = 15;
  double height = 180.5;

  // casting
  // int to double
  // double x = age + 0;
  // double y = age.toDouble();
  // print(x);
  // print(y);

// double to int
  // int x = height.floor();
  // print(x);

// from string to int
// int x = int.parse("4.5");
// print(x+10);

// from string to double
// double y = double.parse("4.5");
// print(y+10);
  // print(" - my name is " + name + " and my age is " + age.toString() + " and my height is " + height.toString());

  // interpolation
  // print("my name is $name and my age is $age and my height is $height in cm");
  // print("my name is $name and my age is $age and my height is ${height/100} in m");

// print("hello".toUpperCase());
// print("HeLLO".toLowerCase());
// print("HeLLO".contains("HL"));
// print("HeLLO".startsWith('HE'));
// print("HeLLO".endsWith('O'));
// print("HeLLO".toLowerCase().endsWith('o')); // hello
// print("HeLLO1 ".length); // hello
// print("HeLLO1 ".indexOf('LO123')); // hello
// print("HeLLO1 L".lastIndexOf('L')); // hello
// print("   ahmed@gmail.com   ".trimRight()); // hello
// print("ahmed ali mohamed wael".split(" ")); // hello
  String x = "ahmed ali mohamed wael5";
  print(x[x.length-1]); // hello

}
/*
5 % 2
5/2=2.5
2 * 2 = 4
5 - 4 = 1


10 % 3
10/3=3.333
3*3 = 9
10 - 9 = 1

11%2
11/2 = 5.5
5 * 2 = 10
11 - 10 = 1

12 %  6
12 /6 =2.0
2 * 6 = 12
12-12=0

12 % 2
12/2 = 6.0
6*2= 12
12-12=0
*/