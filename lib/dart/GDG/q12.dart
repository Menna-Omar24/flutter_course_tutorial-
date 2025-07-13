/*
Create a class called Book with the following properties:
title (String)
author (String)
price (double)
Add a method discountedPrice in the Book class that applies a discount of 10% to the price of the book and returns the discounted price.
Then, create an object of the Book class, set values for the properties, and print the original price and discounted price.
*/
class Book {
  String title;
  String author;
  double price;

  Book({required this.title, required this.author, required this.price});

  double discountedPrice() {
    return price * 0.9;
  }
}

void main() {
  Book book1 =
      Book(title: 'flutter Developer', author: 'Menna Omar', price: 500);
  print('Original Price: ${book1.price} Egp');
  print('Discounted Price: ${book1.discountedPrice()} Egp');
}
