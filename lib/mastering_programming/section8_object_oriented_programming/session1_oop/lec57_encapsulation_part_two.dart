import 'lec58_encapsulation_private_human.dart';

void main() {
  Human menna = Human(hairColor: 'black', height: 170, weight: 65);
  menna.hairColor;
  // مش منطقى ان منة عندها 10 اذرع ف ازاي اغلف المتغير ده وخليه ميقلبش اي قيمة
  // دلوقتي مديني error عشان مينفعش اكسس المتغير لانه بقا private
  // menna._numberOfArms = 10;
}
