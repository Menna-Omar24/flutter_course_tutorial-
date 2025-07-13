/*
non nullable types vs nullable types
conditional access operator
! asserts not null
?? default value of expression is null
required used with optional parameters
late initialize no at time
*/

// void main() {
//   int x = 10;
//   print(x); //null
//   if (x != null) {
//     print(x.isEven); //True or False //null pointer exception ---> run time
//   }
// }

// Try to assign a null value to age variable using ?
// void main() {
//   int? age;
//   age = null;
//   print("Age is $age");
// }

// Try to make the type parameter of List nullable
// void main() {
//   List<int?> items = [1, 2, null, 4];
//   print(items);
// }

// Try to use null assertion operator(!) to print null if the variable is null
// void main() {
//   String? name;
//   name = null;
//   String? name1 = name;
//   print(name1);
// }

// Try to use null assertion operator(!) to print null if the variable is null
// void main() {
//   List<int?> items = [1, 2, null, 4];
//
//   int? firstItem = items.first;
//
//   print(firstItem);
// }

// Try to use null assertion operator(!) to print null if the variable is null
// int? returnNullButSometimesNot() {
//   return -5;
// }
//
// void main() {
//   int result = returnNullButSometimesNot()!.abs();
//   print(result);
// }

// Try to use null assertion operator(!) to print the length of the String or return null if the variable is null
// // int findLength(String? name) {
// //   // add null assertion operator here
// //   return name!.length;
// // }
// //
// // void main() {
// //   int? length = findLength("Hello");
// //   print("The length of the string is $length");
// }

// Try to use null coalescing operator(??) to assign a default value to Stranger if it is null
// void main() {
//   String? name;
//   name = null;
//   String name1 = name??'menna';
//   print(name1);
// }

// Try to solve the error using type promotion
// void main() {
//   Object name = "Mark";
//   if (name is String) {
//     print("The length of name is ${name.length}");
//   } else {
//     print("The variable is not a String");
//   }
// }

// Try to solve the error using type promotion
// import 'dart:math';
// class DataProvider{
//   String? get stringorNull => Random().nextBool() ? "Hello" : null;
//
//   void myMethod(){
//     if(stringorNull is String){
//       print("The length of value is ${stringorNull?.length}");
//     }else{
//       print("The value is not string.");
//     }
//
//   }
// }
//
// void main() {
//   DataProvider().myMethod();
// }
// Try to solve the error using late keyword
class Person {
  late String _name;

  void setName(String name) {
    _name = name;
  }

  String get name => _name;
}

void main() {
  Person person = Person();
  person.setName("Mark");
  print(person.name);
}
