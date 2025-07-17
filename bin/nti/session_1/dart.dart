void main() {
  int? z;
  int x = 5;
  late int y;
  void main() {
/*
  int hours = 5;
  bool isWeekend = true;
  int first3HCost = 10;
  int after3Cost = 20;
  int cost = 0;

  if (hours >2)
  {
    hours -=2; // free first 2 hours

    if( hours <=3) // second 3 hours per 10
    {
      cost = hours * first3HCost;
    }
    else  // after 5 hours per 20
    {
      cost =(first3HCost * 3) +((hours -3 )*after3Cost);
    }
  }


  if (isWeekend) // if weekend, add 50 to the cost
  {
    cost +=50;
  }

  print("cost is $cost\$");
  */

    int speedLimit = 60;
    int actualSpeed = 50;
    bool hasLicense = true;
    int fine = 0;

    int speedDifference = actualSpeed - speedLimit;
    if (speedDifference > 0) {
      if (speedDifference <= 20) {
        fine = 500;
      } else {
        fine = 1000;
      }
    }
    if (!hasLicense) {
      fine += 500;
    }

    print("fine is $fine\$");
  }
/*
// inputs
int speedLimit;
int actualSpeed;
bool hasLicense;

// outputs
int fine = 0;

// rules
- within limit => fine 0
- speed > limit with more than 20 => fine 1000
- speed > limit with less than 20 => fine 500
- if no license => 500+

*/
/*
int speedLimit;
int actualSpeed;
bool hasLicense;
int fine = 0;
  // print(x+6);
  z=5;
  print((z??0)+6);

int speedDifference = actualSpeed - speedLimit;
if (speedDifference > 0)
{
  if(speedDifference<=20)
  if(z == null)
  {
    fine = 500;
    print(0+6);
  }
  else
  else
  {
    fine = 1000;
    print(z!+6);
  }
}
if(!hasLicense)
{
  fine += 500;
}

*/

/*
// inputs
hours , isWeekend

// outputs
cost

// rules
- first 2 h free
- second 3 h 10 per hour
- after 5 h 20 per hour
- if weekend, add 50 to the cost

*/
/*
int hours
bool isWeekend

int cost = 0;

if hours <=2:
  cost =0

else if hours <=5:
cost = (hours -2) * 10

else
  hours -=2
  cost =30 +((hours -3 )*20)

if isWeekend:
  cost +=50

*/
/*
int hours
bool isWeekend
int first3HCost = 10
int after3Cost = 20

int cost = 0;

if hours >2
{
  hours -=2

  if hours <=3:
    cost = hours * first3HCost

  else
    cost =(first3HCost * 3) +((hours -3 )*after3Cost)
}


if isWeekend:
  cost +=50
*/
}
