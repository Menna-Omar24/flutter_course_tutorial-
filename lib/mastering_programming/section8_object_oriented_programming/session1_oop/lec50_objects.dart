void main() {
  Human menna = Human();
  menna.hairColor = 'black';
  menna.skinColor = 'white';
  menna.numberOfArms = 2;
  menna.height = 170;
  menna.weight = 61;
  print(menna.height);

  Human omar = Human();
  omar.height = 175;
  omar.weight = 75;
  omar.numberOfArms = 2;
  omar.skinColor = 'white';
  omar.hairColor = 'black';
  print(omar.hairColor);
}

class Human {
  double? height;
  double? weight;
  int? numberOfArms;
  String? skinColor;
  String? hairColor;
}
