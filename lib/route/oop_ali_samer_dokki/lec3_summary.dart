void main() {
  Product p1 = Product(name: 'Samsung A52', price: 10000, id: '1102');
  Product p2 = Product();
  p1.price;
  // p1.viewDetails();
  p2.viewDetails(); //خد القيمة default
  Product.marketName = 'Harry market';
  print(Product.marketName);
}

class Customer {
  String name;

  Customer(this.name);
}

class Product {
  // class attributes
  static String marketName = 'HYPER ONE';
  String name;
  String id;
  double price;
  String expiryData;
  String description;
  String color;

  Product({
    this.price = 0,
    this.name = '',
    this.id = '',
    this.color = '',
    this.description = '',
    this.expiryData = '',
  });

  int add(int n1, int n2, {int n3 = 0, int n4 = 0}) {
    return n1 + n2 + n3 + n4;
  }

  // object behaviours
  void viewDetails() {
    print('ID:$id');
    print('Name:$name');
    print('Price:$price');
    print(add(4, 15, n3: 5, n4: 4));
    print(marketName);
  }

  // static behaviours
  static printMarket() {
    print(marketName);
    // print(id);//مش تبع ال object static
  }

  // static printMarket(Product p){
  //   print(marketName);
  //   print(p.id);
  // }
  printExpiryData() {}
}
