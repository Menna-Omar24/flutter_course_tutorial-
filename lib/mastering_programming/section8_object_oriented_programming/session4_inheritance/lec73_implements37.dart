void main() {
  Lion scar = Lion();
  Dog jack = Dog(skinColor: '', weight: 400);
  Cat kitty = Cat(skinColor: '', weight: 85, bloodType: '');

  scar.eat();
  jack.eat();
  kitty.eat();
  scar.roar();
  jack.bark();
  kitty.meo();

  List<Animal> zooAnimal = [scar, jack, kitty];
  print(zooAnimal);
}

abstract class Animal {
  int numberOfLimbs = 4;

  String skinColor;
  double weight;

  Animal({required this.skinColor, required this.weight});

  eat();

  walk() {}

  sleep() {}
}

// keyword ---> extends = implements الاتنين وراثة
// لكن الفرق في طريقة التنفيذ
// implements ---> طريقة مختلفة من الوراثة هو بيرث من animal ---> ولازم ينفذ كل حاجة اتذكرت في class ---> اللى اسمه animal بشكل الخاص بيه
// implements --> بستخدمها امتي
// لما يكون عندي class موجود فيه مجموعة من ال method وال method دي برثها بشكل مختلف بقيت مجبرة ان هرث كل حاجة بشكل مختلف
class Lion implements Animal {
  @override
  int numberOfLimbs = 4;

  @override
  late String skinColor;

  @override
  late double weight;

  @override
  eat() {
    // TODO: implement eat
    throw UnimplementedError();
  }

  @override
  sleep() {
    // TODO: implement sleep
    throw UnimplementedError();
  }

  @override
  walk() {
    // TODO: implement walk
    throw UnimplementedError();
  }

  void roar() {}
}

class Dog extends Animal {
  Dog({required super.skinColor, required super.weight});

  bark() {
    print('barking');
  }

  @override
  eat() {}
}

class Cat extends Animal {
  String bloodType;

  Cat(
      {required this.bloodType,
      required super.skinColor,
      required super.weight});

  meo() {
    print('meo');
  }

  @override
  eat() {}
}
