// Example 1: Simple Parking Cost Calculation
void main() {
  int hours = 3;
  bool isWeekend = false;
  int cost = 0;

  if (hours <= 2) {
    cost = 0;
  } else if (hours <= 5) {
    cost = (hours - 2) * 10;
  } else {
    hours -= 2;
    cost = 30 + ((hours - 3) * 20);
  }

  if (isWeekend) {
    cost += 50;
  }

  print("Example 1: $cost");

  // Example 2: Slightly Different Approach
  int hour = 3;
  bool isWeekend1 = false;
  int cost1 = 0;

  if (hour > 2) {
    hour -= 2;
    if (hour <= 3) {
      cost1 = hour * 10;
    } else {
      cost1 = 30 + ((hour - 3) * 20);
    }
  }

  if (isWeekend1) {
    cost1 += 50;
  }

  print("Example 2: $cost1");

  // Example 3: Using constants for costs
  int h = 3;
  bool weekend = false;
  int c = 0;
  int first3hCost = 10;
  int after3hCost = 20;

  if (h > 2) {
    h -= 2;
    if (h <= 3) {
      c = h * first3hCost;
    } else {
      c = (first3hCost * 3) + ((h - 3) * after3hCost);
    }
  }

  if (weekend) {
    c += 50;
  }

  print("Example 3: $c");
}
