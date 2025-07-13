/*
class vs object
class representation for object
class have object attributes
object instance of class
constructor create object and initialize attributes
object ---> first
*/
void main() {
// datatype , nameObject , constructor
// Product       p1       =Product('Samsung A52', 1022, 10.000);
// Product p2 = Product('iphone', 1011, 60.000);
  // المسئول عن object هو <--- constructor
  Product p1 = Product(name: 'Samsung A52', price: 10000, id: '1102'); //object
  Product p2 = Product(name: 'iphone', price: 60000, id: 'A11C03');
  p1.price; //access operator
  p1.viewDetails();
  p2.viewDetails();
  // Product P = Product.inti();
  // Product P2 = Product.withId();
}

// من الافضل اعمل class خاص customer
class Customer {
  String name;
  Customer(this.name);
}

// encapsulation
class Product {
  //class ---> اول حرف كابيتل
  // attributes - properties - data fields
  // بقا اسمها attributes عشان بقت جوه class

  // object attributes
  String name;
  String id;
  double price;
  // String customerName; //logical error
  //كدا انا ببني لمنتج واحد
  // Product1() {
  //   id = 1011;
  //   name = 'samsung';
  //   price = 10.000;
  // }

  // لما اجي اناديك object تعال اسالني اي data اللى هدهالك عن طريق اني هثبت parameters
  // Product(String n , int i , double p){
  //   id=i;
  //   name=n;
  //   price=p;
  // }
  // كدا انا بنادي على الحاجة ونفسها كاني بنادي على نفسي
  // Product(String name , int id , double price){
  //   id=id;
  //   name=name;
  //   price=price;
  // }

  // initialization value to attributes
  // constructor create object---> special --> عشان مفيهاش return --> واسمها نفس اسم class
  // this ---> pointer ---> بتشاور
  // كدا قدرت اديله DEFAULT VALUE
  Product({this.price = 0, this.name = '', this.id = 'A012'}); // primary
  // مينفعش اعمل constructor بنفس الاسم وفي نفس الوقت مينفعش اسميه اسم غير class
  // Product(){}
  //مينفعش اسمي function بنفس الاسم
  // add(int n1 , int n2){
  //
  // }
  // double add(int n1 , int n2 , int n3){
  //
  // }

  // optional parameters
  // positional optional parameters []
  // named optional parameters
  // int add(int n1, int n2, [int n3, int n4]) {
  //   if (n3 == null && n4 == null) {
  //     return n1 + n2;
  //   } else if (n4 == null) {
  //     return n1 + n2 + n3;
  //   } else if (n3 == null) {
  //     return n1 + n2 + n4;
  //   }
  //   return n1 + n2 + n3 + n4;
  // }
  // named optional parameters{}
  int add(int n1, int n2, {int n3 = 0, int n4 = 0}) {
    return n1 + n2 + n3 + n4;
  }

  // فيه طريقة افضل لان dart مفيهاش function overloading
  // اسمها function overload
  // default value
  // Product.inti() { //named constructor
  //   this.id = '0';
  //   this.name = "";
  //   this.price = 0;
  // }
  // وبدل ما اعمل constructor عشان اديله قيمة default ممكن اعملها في primary constructor
  // // constructor --> id
  // Product.withId(this.id){
  //   id='101';
  // }
  // function --> بقا اسمها methods ---> عشان تدخل جوه class
  // method -behaviors
  void viewDetails() {
    print('ID:$id');
    print('Name:$name');
    print('Price:$price');
    // print(add(2, 3,0,7));
    print(add(4, 15, n3: 5, n4: 4));
  }

  // logical error ---> بخلى ال class ---> يشيل اكتر من مسؤلية وده غلط
  // printReset(){
  //
  // }
  printExpiryData() {}
}
