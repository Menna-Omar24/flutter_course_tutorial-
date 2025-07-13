//   جه طلب قالي انا عايز طريق اعرض بيها المنتجات بتاعتي اي المنتجات اللى دخلت عندي
// ف اعمل functions عشان تعرض كل المنتجات اللى عندي
printProductsData(List<int> ids, List<String> names, List<int> prices,
    List<String> barcodes) {
  for (int i = 0; i < ids.length; i++) {
    print('product:${ids[i]}-${names[i]}-${prices[i]}');
  }
}

void main() {
  // oop --- >object oriented programming
//   عبارة عن طريقة مختلفة لكتابة الكود تهدف الى object --> اي هو object اي حاجة حوالينا object---> الكتييف و الانسان والحيوانات و الاشياء والاب توب وغيره
// super market system
// product (id , name , price)
// السوبر ماركت مش قايم كله على منتج واحد ف مينفعش استخدم variable
//   int id;
//   String name;
//   int price;

// طب استخدم list
//   List<int> ids;
//   List<String> names;
//   List<int> prices;
//   List<String>barcodes;
  // printProductsData(ids, names, prices);

//   الطريقة دي مش فعالة الداتا بتاعت المنتج متبعترة في كذا مكان مش عارف اتحكم في المنتج واي تغيير صغير هضطر اني اغير في كله وتخيل بقا لو فيه اكتر من functions
}
