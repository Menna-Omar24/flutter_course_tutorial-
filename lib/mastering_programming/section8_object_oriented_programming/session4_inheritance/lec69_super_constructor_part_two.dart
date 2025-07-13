void main() {
  Lion scar = Lion(skinColor: '', weight: 5000);
  Dog jack = Dog(skinColor: '', weight: 400);
  Cat kitty = Cat(skinColor: '', weight: 85, bloodType: '');

  scar.eat();
  jack.eat();
  kitty.eat();
  scar.roar();
  jack.bark();
  kitty.meo();
}

class Animal {
  int numberOfLimbs = 4;

  String skinColor;
  double weight;

  Animal({required this.skinColor, required this.weight});

  eat() {
    print('eating');
  }

  walk() {}

  sleep() {}
}

class Lion extends Animal {
  // شكل تاني ل constructor
  // انا كدا استخدمت constructor الفعلي
  Lion({required super.skinColor, required super.weight});

  // Lion({required super.skinColor, required super.weight});

  roar() {
    print('roaring');
  }
}

class Dog extends Animal {
  Dog({required super.skinColor, required super.weight});

  // Dog({required String skinColor, required double weight})
  //     : super(skinColor: skinColor, weight: weight);

  // Dog({required super.skinColor, required super.weight});

  bark() {
    print('barking');
  }
}

class Cat extends Animal {
  // ده attributes انا ورثها
  String bloodType;

  Cat(
      {required this.bloodType,
      required super.skinColor,
      required super.weight});

  // Cat(this.bloodType, {required super.skinColor, required super.weight});

  meo() {
    print('meo');
  }
}
