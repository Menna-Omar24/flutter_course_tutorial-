void main() {
  Dog jack = Dog();
  Dog jack2 = Dog();
  // object == object2
  print(jack==jack2);
  // دي موجود عشان انا اللى كتباها
  jack.walk();
  // طب دي جت منين واي حاجة بتظهر من . بتيجي منين
  // اي كلاس by defaultانا بنشاه ب extend ال object class عشان كدا انا برث ال method دى
  jack.toString();
  // list من الكائنات
  // list of object
  List<Object> objects = [jack];
  print(objects);
}

//extend object class
class Dog {
  walk() {}
}
