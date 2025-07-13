void main() {
  Lion scar = Lion(skinColor: 'brown', weight: 4000);
  Dog jack = Dog(skinColor: '', weight: 200);
  Cat kitty = Cat(skinColor: 'yellow', weight: 80, bloodType: '');
  // مينفعش استخدم الطريقة دي واديله القيم احنا حلينا الموضوع ب constructor
  // scar.skinColor;
  scar.eat();
  jack.eat();
  kitty.eat();
  scar.roar();
  jack.bark();
  kitty.meo();
}

class Animal {
  int numberOfLimbs = 4;

  // نفترض ان class animal  فيه مجموعة من السمات
  String skinColor;
  double weight;

  // constructor ---> animal
  // Animal(this.skinColor,this.weight);

  // اخلى بالي انه بيتبع شكل constructor
  Animal({required this.skinColor, required this.weight});

  eat() {
    print('eating');
  }

  walk() {}

  sleep() {}
}

class Lion extends Animal {
  // اي كلاس بنشأه بيبقي فيه constructor
  // Lion(); ---> constructor فاضى مبيعملش اي حاجة
  // وظيفته اني ابني الكائن بشكل اسرع
  // كده انا بخلي constructor يقولي انا عايز البيانات
  // هنا هيفضل مديني error لان انا مقدرش اكسس القيم لان معنديش attributes تستقبل فيه القيمة اللى جيالك
  // Lion(this.skinColor,this.weight)
  // عشان احل المشكلة لازم انشىء constructor--->animal

  // Lion---> Error---> بما فيه شكل بناء الكائن Animal لانه بيرث كل حاجة من
  // فكدا بقا مجبر انه لازم يستقبل البيانات دي
  // دلوقتي انا محتاجة اخلى ال lion بشكل ما القيم اللى يستقبلها تروح ل attributes اللى في --> animal
  // فنقدر نحل المشكلة دي عن طريق حاجة  اسمها super constructor
  // super -->هنا بتقول انا هديها ل ---> attributes اللى انا برث منها
  // this ---> تعود على---> class اللى انا فيه
  // super---> تعود على ---> class ---> اللى انا برث منه عشان استقبل البيانات
  // Lion(super.skinColor,super.weight);
  Lion({required super.skinColor, required super.weight});

  roar() {
    print('roaring');
  }
}

class Dog extends Animal {
  Dog({required super.skinColor, required super.weight});

  // Dog(super.skinColor, super.weight);

  bark() {
    print('barking');
  }
}

class Cat extends Animal {
  String bloodType;

  // Cat(this.bloodType, {required super.skinColor, required super.weight});

  // Cat({this.bloodType,required super.skinColor, required super.weight});
  Cat(
      {required this.bloodType,
      required super.skinColor,
      required super.weight});

  // Cat(super.skinColor, super.weight)

  meo() {
    print('meo');
  }
}
