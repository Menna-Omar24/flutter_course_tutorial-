class User {
 late String name;
  late int age;

  User._internal();

  static final User _instance = User._internal();

  factory User() {
    return _instance;
  }
}
