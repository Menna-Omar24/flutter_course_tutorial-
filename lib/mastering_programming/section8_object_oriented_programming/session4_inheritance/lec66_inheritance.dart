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

class Lion {
  int numberOfLimbs = 4;

  eat() {
    print('eating');
  }

  roar() {
    print('roaring');
  }
}

class Dog {
  int numberOfLimbs = 4;

  eat() {
    print('eating');
  }

  bark() {
    print('barking');
  }
}

class Cat {
  int numberOfLimbs = 4;

  eat() {
    print('eating');
  }

  meo() {
    print('meo');
  }
}
