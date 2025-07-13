void main() {}

class Animal {
  int numberOfLimbs = 2;
// مينفعش احط method walk عشان snake مش walk هي crawl
// walk() {}
}

// الحيوانات تنقسم ل انواع --> شىء طبيعي بيتخلفوا في بعض الصفات وبعض المهام واكيد بيتشاركوا في بعض النقط انهم كلهم animal
// ف المنطقي ان انشىء class animal ويشمل كل حاجة موجودة في mammals , reptiles
// mammals ثدييات
// reptiles زواحف
class Dog extends Animal {
  // وكدا رجعت لنفس المشكلة وهي التكرار
  walk() {}
}

class Cat extends Animal {
  walk() {}
}

// snake ---> crawl not walk
// مينفعش snack ترث animal --> عشان ال method walk
// ولازم ترث من animal
class Snake extends Animal {
  crawl() {}
}
