void main() {
  Human menna = Human();
  menna.hairColor = 'black';
  menna.skinColor = 'white';
  menna.numberOfArms = 2;
  menna.height = 170;
  menna.weight = 61;
  print(menna.height);
  // functions
  menna.read();

  Human omar = Human();
  omar.height = 175;
  omar.weight = 75;
  omar.numberOfArms = 1;
  omar.skinColor = 'white';
  omar.hairColor = 'black';
  print(omar.hairColor);
  print(omar.numberOfArms);
//   functions
  omar.read();
}

// عشان امثل كائن
// 1- class
// 2- attributes + functions(مهمة)
class Human {
  double? height;
  double? weight;
  int numberOfArms = 2;
  String? skinColor;
  String? hairColor;

// functions مهمة (methods)
  void read() {
    print('this human is reading');
  }
}
