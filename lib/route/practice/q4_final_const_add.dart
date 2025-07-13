// //Ex.4: What will happen if we run this code?
void main() {
  // const a1 = [1,2,3]; //مش بتشتغل فى مرحلة compile time
  final a2 = [1, 2, 3]; //run time
  // a2 = [4, 5]; //مينفعش initialize
  // a1.add(4);
  a2.add(4); //run time
  print(a2);
}
