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
  // لو لاحظنا الكائنات المتخزنة هي معمولة من classes بترث من animal
  List<Animal> zooAnimal = [scar, jack, kitty];
  print(zooAnimal);
  // abstract ---> مينفعش انشأ منه object
  // مينفعش اعمل object من class اللى اسمه animal
  // Animal zeo = Animal();
  // ينفع استخدمه ك type
}

abstract class Animal {
  int numberOfLimbs = 4;

  String skinColor;
  double weight;

  Animal({required this.skinColor, required this.weight});

  // بحط method مش متحدد فيها طريقة التنفيذ فبالتالي اي class بيرث مني لازم هو اللى يحدد طريقة التنفيذ وهو مجبر على كدا
  // كده انا بجبر اي شخص يكتبلي طريقة ال eat ازاي
  eat(); //abstract

  walk() {}

  sleep() {}
}

class Lion extends Animal {
  @override
  void eat() {
    print('lion is eating');
  }

  Lion({required super.skinColor, required super.weight});

  roar() {
    print('roaring');
  }
}

class Dog extends Animal {
  Dog({required super.skinColor, required super.weight});

  bark() {
    print('barking');
  }

  // لازم عند كل class بيرث مني بقيت مجبرة ابعتله override وكده ريحت نفسي من النسيان
  // لازم احدد طريقة التنفيذ طالما طريقة التنفيذ مختلفة
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
