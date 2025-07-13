// import 'lec58_encapsulation_private_human.dart';
// import 'lec60_setter.dart';
// import 'lec62_getter.dart';
import 'lec63_more_about_constructors.dart';
void main() {
  Human menna = Human(hairColor: 'black', height: 170, weight: 65);
  // menna.setNumberOfArms(-15);
  // setter
  menna.numberOfArms = 10;
  // print(menna.getNumberOfArms());
  // getter
  print(menna.numberOfArms);
  print(menna.hairColor);
}
