void main() {
//   مش كل مرة هجمع نفس الارقام لان القيم اللى بجمعها بتتغير
// ازاي كل مرة لما استدعي ال functions دي اجمع رقمين مختلفين
// كدا انا محتاجة طريقة تواصل ما بين المكان اللى بستدعي في functions وبين المكان اللى بنفذ فيه ال functions
//arguments --->القيم اللى هتتخزن في المتغيرات
//arguments---> 20,50
  int result = sumToNumber(20, 50);
  print(result);
  //arguments---> 30,50
  result = sumToNumber(30, 50);
  print(result);
}

//parameters ---> datatype , المتغيرات ( متغير 1 , متغير 2 <--- اللى هو اسم المتغير
// هي المتغيرات اللى انشاتها جوه ال functions
int sumToNumber(int num1, int num2) {
  int result = num1 + num2;
  return result;
}
