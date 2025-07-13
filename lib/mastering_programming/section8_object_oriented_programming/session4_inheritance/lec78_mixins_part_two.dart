void main() {}

class Animal {
  int numberOfLimbs = 2;
}

// لسه فيه تكرار
// وكده مش بيرثوا من animal وده مش منطقى لان كلهم اصلا حيوانات الفرق انهم بيشتركوا في صفات وبيختلفوا بعض الصفات الاخرى
class Mammals {
  walk() {}
}

class Reptiles {
  crawl() {}
}

class Dog extends Mammals {}

class Cat extends Mammals {}

class Snake extends Reptiles {}
