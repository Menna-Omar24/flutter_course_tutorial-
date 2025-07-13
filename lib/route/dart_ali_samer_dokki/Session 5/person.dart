class Person{
  final String _name;
  String id;
  String address;
  int age;
  String get personName => _name;
  set personName(String value) => _name;
  Person(this._name , this.id , this.address , this.age);
}
