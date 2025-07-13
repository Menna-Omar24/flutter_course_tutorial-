void main() {
  Lion scar = Lion();
  Dog jack = Dog();
  Cat kitty = Cat();
  // الصفات المشتركة
  scar.eat();
  jack.eat();
  kitty.eat();
  // الصفات الغير مشتركة
  scar.roar();
  jack.bark();
  kitty.meo();
}
//  الصفات المشتركة هنحطها كلها في class الاب
// subclasses
class Animal {
  int numberOfLimbs = 4;

  eat() {
    print('eating');
  }
  walk(){}
  sleep(){}
}
// برث كل حاجة من class الاكبر مني
class Lion extends Animal {
  roar() {
    print('roaring');
  }
}

class Dog extends Animal {
  bark() {
    print('barking');
  }
}

class Cat extends Animal {
  meo() {
    print('meo');
  }
}
