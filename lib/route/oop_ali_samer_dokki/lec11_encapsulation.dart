import 'lec12_private_person.dart';

void main() {
  Person p = Person(1, 'menna', 'cairo', 21);
  // p._name=''; مقدرش اكسسها
  p.personName; //getter لارجاع القيمة
  p.personName='omar'; //setter
  print(p.personName);
}
