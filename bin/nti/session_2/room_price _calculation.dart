/*
Room Price Calculation
Problem 3: Dynamic Room Price Calculation

A hotel charges:

Base price: 200 per night

If more than 3 nights, 10% discount

If booking in holiday season (bool): add 25%

If both long stay and holiday: only add 15%(insteadof25)
 */
void main(){
  int nights = 4;
  bool isHolidaySeason = true;

  double pricePerNight = 200;
  double total = nights * pricePerNight;

  if (nights > 3 && isHolidaySeason) {
    // Both conditions
    total = total * 0.9 * 1.15;
  } else if (nights > 3) {
    total *= 0.9;
    // Only discount
  } else if (isHolidaySeason) {
    total *= 1.25; // Only holiday markup
  }

  print("Total Cost: \$${total.toStringAsFixed(2)}");
}

