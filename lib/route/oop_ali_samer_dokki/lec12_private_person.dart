class Person {
  final String _name;
  int id;
  String address;
  int age;
  Person(this.id, this._name, this.address, this.age);
  String get personName => _name;
  set personName(String value) => _name;
}
