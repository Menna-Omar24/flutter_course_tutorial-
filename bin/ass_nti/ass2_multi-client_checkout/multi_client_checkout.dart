import 'dart:io';

void main() {
  while (true) {
    showMenu();

    List<Map<String, dynamic>> cart = [];

    while (true) {
      int productNumber = getPositiveInt('Enter product number(0 to finish): ');
      if (productNumber == 0) break;

      if (!products.containsKey(productNumber)) {
        print('Invalid product number. please try again.');
        continue;
      }

      int quantity = getPositiveInt('Enter quantity: ');
      if (quantity == 0) {
        print('Quantity can\'t be zero. Try again.');
        continue;
      }

      final product = products[productNumber]!;

      bool found = false;
      for (var item in cart) {
        if (item['name'] == product['name']) {
          item['quantity'] += quantity;
          found = true;
          break;
        }
      }
      if (!found) {
        cart.add({
          'name': product['name'],
          'price': product['price'],
          'quantity': quantity,
        });
      }
    }
    print('\nYour cart:');
    for (var item in cart) {
      print('${item['name']} - \$${item['price']} x ${item['quantity']}');
    }

    if (cart.isEmpty) {
      print('Your cart is empty. Please add products to continue.');
      continue;
    }

    print('\nReady to continue with customer info and receipt');

    String customerName = prompt('Please enter your name: ');
    String customerPhone = prompt('Please enter your phone number: ');

    double subtotal = 0;
    for (var item in cart) {
      subtotal += item['price'] * item['quantity'];
    }

    double tax = calculateTax(subtotal);
    double discount = calculateDiscount(subtotal);

    double deliveryFee = 0;
    String wantsDelivery =
        prompt('Do you want delivery? (yes/no): ').toLowerCase();

    if (wantsDelivery == 'yes') {
      int distance = getPositiveInt('Enter delivery distance in km: ');

      deliveryFee=calculateDeliveryFee(distance);
    }
    double total = subtotal + tax + deliveryFee - discount;

    print('\n${'=' * 40}');
    print('\n==================== Receipt ====================');
    print('Customer Name:$customerName');
    print('Customer Phone:$customerPhone\n');

    for (var item in cart) {
      print(
          '${item['name']} x ${item['quantity']} = \$${(item['price'] * item['quantity']).toStringAsFixed(2)}');
    }

    print('\nSubtotal: \$${subtotal.toStringAsFixed(2)}');
    print('Tax(13%): \$${tax.toStringAsFixed(2)}');
    print('Discount: \$${discount.toStringAsFixed(2)}');
    print('Delivery Fee: \$${deliveryFee.toStringAsFixed(2)}');
    print('Total: \$${total.toStringAsFixed(2)}');
    print('\n${'-' * 40}');
    print('Ready for next customer...\n\n');
    print('\nThank you for shopping with us, $customerName!');

    String again = prompt('Serve another customer? (yes/no): ').toLowerCase();
    if (again != 'yes') {
      print('Exiting the program...');
      break;
    }
  }
}

final Map<int, Map<String, dynamic>> products = {
  1: {'name': 'keyboard', 'price': 100},
  2: {'name': 'Mouse', 'price': 50},
  3: {'name': 'Monitor', 'price': 300},
  4: {'name': 'USB Cable', 'price': 20},
  5: {'name': 'Headphones', 'price': 150},
};

void showMenu() {
  print('Welcome to the store!');
  print('Available products: ');

  products.forEach((key, value) {
    print('$key.${value['name']} -\$${value['price']}');
  });
}

double calculateTax(double subtotal) => subtotal * 0.13;

double calculateDiscount(double subtotal) =>
    subtotal >= 1000 ? subtotal * 0.10 : 0.0;

double calculateDeliveryFee(int distance) {
  if (distance <= 10) return 10;
  if (distance <= 20) return 20;
  return 45;
}

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync() ?? '';
}

int getPositiveInt(String message) {
  int? value;
  do {
    value = int.tryParse(prompt(message));
    if (value == null || value < 0) {
      print('Enter a valid number.');
    }
  } while (value == null || value < 0);
  return value;
}

double getPositiveDouble(String message) {
  double? value;
  do {
    value = double.tryParse(prompt(message));
    if (value == null || value < 0) {
      print('Enter a valid number.');
    }
  } while (value == null || value < 0);
  return value;
}
