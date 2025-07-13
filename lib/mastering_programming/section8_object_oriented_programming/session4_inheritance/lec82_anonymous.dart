void main() {
//   كائنات بدون اسماء
  List<Animal> animals = [Dog(500), Cat()];
  print(animals);
}

class Animal {}

class Dog extends Animal {
  int weight;
  Dog(this.weight);
}

class Cat extends Animal {}
