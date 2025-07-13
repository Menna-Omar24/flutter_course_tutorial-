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
  // animal---> attributes ,method
  // class --->بيرث منه ف هو بيرث كل حاجة
  // method ---> eating ---> class اي حيوان بيرث من  ---> اللى اسمه animal ---> يقدر ينفذ ال method eat ---> وبنفس الشكل بالظبط
  // يعني كل بياكلو بنفس الطريقة
  // لكن في بعض الحالات  بنلاقي ان فيه حيوان بياكل بشكل مختلف عن الباقيين
  // يعني من الاخر بيبقي عندي نفس method اسمها eat لكن اللى بيحصل جواها بيتم بشكل مختلف على حسب الحيوان
  // يعني نفهم من كدا ان اللى بيحصل جوه {} مختلف
  eat() {
    print('eating');
  }

  walk() {}

  sleep() {}
}

class Lion extends Animal {
  // @ ---> annotation
  @override
  void eat(){
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
}
