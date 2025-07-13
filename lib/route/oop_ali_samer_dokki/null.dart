class Employee{
  String name;
  String id;
  Employee({required this.name ,required this.id});
}

class Car{
  String name;
  String model;
  late Customer customer;
  Car({required this.name , required this.model});
}

class Customer{
  String name;
  String address;
  String nationalId;
  late Car car;
  Customer({required this.name , required this.address , required this.nationalId});
}
main(){
  // non nullable types vs nullable types?
  // conditional access operator ?.
  // ! assert not null
  // ?? default value of expression is null
  // required used with optional parameters
  // late initialize no at time
  Car myCar = Car(name: "Nissan", model: "2017");
  Customer c = Customer(name: "Ahmed", address: "zayed", nationalId: "0123800");
  myCar.customer = c;
  c.car = myCar;
  String? name = "Ali";
  print(name);
  int? x;
  print(x);
  x = 11;
}