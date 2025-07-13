void main() {
  Dog jack = Dog();
  jack.walk();
  jack.play();
}

class Animal {
  int numberOfLimbs = 2;
}

//  من الافضل اسميه باسم mixin عشان افرق بس بين class و mixin عشان يسهل عليا الرؤية
mixin MammalsMixin {
  walk() {
    print('mammals walking');
  }
}

mixin ReptilesMixin {
  crawl() {}
}

mixin PetMixin {
  play() {}
  // انهى print هيتنفذ ده لان اخر حاجة حطيتها في mixin هي اللى بتتنفذ
  walk() {
    print('pet walking');
  }
}

// الكلب ثدي وحيوان اليف
// dog pet , mammals ---> ف سهل ان احطهم مع بعض عادي عن طريق ---> ,
// انا عندي حاجات مشتركة بين mixin pet , mammals ف اخر واحد في mixin هي اللى بتتنفذ هي اللى ليها الاولولية
class Dog extends Animal with MammalsMixin, PetMixin {}

class Cat extends Animal with MammalsMixin {}

class Snake extends Animal with ReptilesMixin {}
