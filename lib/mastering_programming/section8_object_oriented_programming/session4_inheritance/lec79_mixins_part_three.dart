void main() {
  Dog jack =Dog();
  jack.walk();
}

class Animal {
  int numberOfLimbs = 2;
}
// multi inheritance ----> معندناش القدرة اننا inheritance --> class  اكتر من
// لكن عندنا البديل هو mixin
// ازاي اخليه يرث من animal , mammals
// animal , reptiles
// عن طريق mixins بدل ما اكتب class لاء هكتب mixin
mixin Mammals {
  walk() {}
}

mixin Reptiles {
  crawl() {}
}

// كدا خليته يرث من الاتنين عشان الصفات المشتركة انهم كلهم حيوانات والصفات الغير مشتركة
class Dog extends Animal with Mammals {}

class Cat extends Animal with Mammals {}

class Snake extends Animal with Reptiles {}
