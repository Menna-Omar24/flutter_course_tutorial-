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
  // polymorphism ---> zooAnimals---> animals ---> لازم يبقي فيه وراثة

  List<Animal> zooAnimal = [scar, jack, kitty];
  print(zooAnimal);
  //list of animal <Animal>---> datatype ---> مجموعة من الحيوانات --->[scar, jack, kitty]
  //لازم التزم بنوع datatype
  // List<String>names=[15,'menna'];//هنا مينفعش احط ---> datatype من نوع int ---> لان ال ---> list بتقبل مجموعة من الحروف
  // List zooAnimal = [scar, jack, kitty,16 ,'menna'];---> datatype ممكن اسيبها كدا من غير ما احدد  ---> datatype بس كدا هيقبل اي نوع من -->  dynamic وكده هيكون
  // List<Dog>dogs=[scar]; // هو كلبscar مينفعش احط شكلين مختلفين --> مينفعش اقول
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
