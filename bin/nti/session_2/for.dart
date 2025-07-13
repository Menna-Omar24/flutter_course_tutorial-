void main() {
// start 0 10
// even
// odd
  print('__________________even,odd____________________');
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print('$i is even');
    } else {
      print('$i is odd');
    }
  }
  print('________________10===>0______________________');
  for (int i = 10; i >= 0; i--) {
    print(i);
  }
  print('_________________0===>10_____________________');

  for (int i = 0; i <= 10; i++) {
    print(i);
  }
  print('_________________even_____________________');

  for (int i = 0; i <= 10; i += 2) {
    print(i);
  }
  print('________________odd______________________');
  for (int i = 1; i <= 10; i += 2) {
    print(i);
  }
  print('_________________table of 5______________________');
  for (int i = 0; i <= 12; i++) {
    print('5 * $i = ${5 * i}');
  }
  print('_________________table of 12______________________');
  // nested for loop
  for (int i = 0; i <= 12; i++) {
    for (int j = 0; j <= 12; j++) {
      print('$i * $j = ${i * j}');
    }
  }

  print('_________________do while______________________');
  int i = 0;
  do {
    print(i);
    i++;
  } while (i <= 10);

  print('_________________for while______________________');
  int j = 0;
  while (j <= 10) {
    print(j);
    j++;
}

  print('_________________for______________________');
  for (int k = 0; k <= 10; k++) {
    print(k);
  }
  print('_________________while nested do while table ______________________');
  int n = 1;
  while (n <= 12) {
    int m = 1;
    do {
      print('$n * $m = ${n * m}');
      m++;
      } while (m <= 12);
    n++;
  }
  print('_________________do nested while table______________________');
  int o = 1;
  do {
    int p = 1;
    while (p <= 12) {
      print('$o * $p = ${o * p}');
      p++;
    }
    o++;
  } while (o <= 12);

}
// function calculator


sum(int x1 ,int x2){
  return x1+x2;
}
// int x;



