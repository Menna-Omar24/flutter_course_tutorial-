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
  omar.numberOfArms = 1;
  omar.skinColor = 'white';
  omar.hairColor = 'black';
  print(omar.hairColor);
  print(omar.numberOfArms);
}
// مينفعش احط قيمة ثابته لان كدا انا بطبقها على الكل بس لو حطيتها عادي ممكن اجي اغيرها واحط فوق القيمة اللى عايزاها
class Human {
  double? height;
  double? weight;
  int numberOfArms=2;
  String? skinColor;
  String? hairColor;
}
