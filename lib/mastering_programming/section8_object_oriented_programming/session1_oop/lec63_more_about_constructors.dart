class Human {
  double? height;
  double? weight;

  int _numberOfArms = 2;
  String? skinColor;
  String? hairColor;

  Human({this.height, this.weight, this.hairColor});

  set numberOfArms(int numberOfArms) {
    if (numberOfArms <= 2 && numberOfArms >= 0) {
      _numberOfArms = numberOfArms;
    }
  }

  int get numberOfArms => _numberOfArms;
}
