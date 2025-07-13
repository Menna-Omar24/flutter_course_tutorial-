void main() {
  // constructors --->Human()
  Human menna = Human();
  menna.read();
  menna.hairColor = 'black';
  menna.skinColor = 'white';
  menna.numberOfArms = 2;
  menna.height = 170;
  menna.weight = 61;
  print(menna.height);

  menna.read();
  Human omar = Human();
  omar.height = 175;
  omar.weight = 75;
  omar.numberOfArms = 1;
  omar.skinColor = 'white';
  omar.hairColor = 'black';
  print(omar.hairColor);
  print(omar.numberOfArms);

  omar.read();
}

class Human {
  double? height;
  double? weight;
  int numberOfArms = 2;
  String? skinColor;
  String? hairColor;

  // مينفعش احط RETURN TYPE
  // void Human(){}

// constructors ---> موجود هنا بس محدش شايفه
// Human(){}

  void read() {
    print('this human is reading');
  }
}
