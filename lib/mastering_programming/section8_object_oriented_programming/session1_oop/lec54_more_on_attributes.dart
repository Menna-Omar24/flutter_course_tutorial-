void main() {
  Human menna = Human();
  menna.hairColor = 'black';
  menna.skinColor = 'white';
  menna.numberOfArms = 2;
  menna.height = 170;
  menna.read();
  menna.weight = 61;

  Human omar = Human();
  omar.height = 175;
  omar.weight = 75;
  omar.numberOfArms = 1;
  omar.skinColor = 'white';
  omar.hairColor = 'black';
  omar.read();
}

class Human {
  double? height;
  double? weight;
  int numberOfArms = 2;
  String? skinColor;
  String? hairColor;

  void read() {
    print('this human is reading');
    print(' human height =$height ');
  }
}
