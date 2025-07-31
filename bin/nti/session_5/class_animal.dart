class Animal {
  String name;
  int age;
  String color;

  Animal({required this.name, required this.age, required this.color});

  void makeSound() {}

  void display() {
    print('Name: $name, Age: $age, Color: $color');
  }
}

class Dog extends Animal {
  String type;

  Dog(
      {required super.name,
      required super.age,
      required super.color,
      required this.type});

  @override
  void makeSound() {
    print('woof woof');
  }

  @override
  display() {
    super.display();
    print('Type: $type');
  }
}

class Bird extends Animal {
  bool canFly;

  Bird({
    required super.name,
    required super.age,
    required super.color,
    required this.canFly,
  });

  @override
  void makeSound() {
    print('Chirp Chirp');
  }

  @override
  display() {
    super.display();
    print('Can Fly: $canFly');
  }
}

void main() {
  Dog dog = Dog(name: 'Buddy', age: 3, color: 'brown', type: 'labrador');
  dog.makeSound();
  dog.display();

  print('');

  Bird bird = Bird(name: 'Tweety', age: 1, color: 'white', canFly: true);
  bird.makeSound();
  bird.display();
}
