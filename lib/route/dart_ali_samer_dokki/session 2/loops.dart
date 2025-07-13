import 'dart:io';

void main(){
  // for loop -> number of iterations (defined)
     // start   // s.c  // increment / decrement
  /*for(int i=0 ; i<=10 ; i++ ){    // i = 11
    print(i);
  }*/
  // Time Complexity  Big o notation -> O()
  //  1         n+1     n
  /*for(int i=0 ; i<=n; i++){ //100 step
    if(i%2==0){ // n
      print(i);// n/2
    }
  }
  // O(4n+2)->O(4n) -> O(n)
  // O(352) -> O(1)
  //      1     1+n   n/2
  for(int i=0;i<=n;i+=2){ ////50 step
    print(i); //n
  }
  // O(n)
  // O(152) -> O(1)
  int n1 = 8;
  int n2 = 5;
  int n3 = 7;*/

  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for(int i=1;i<=n;i++){
    sum = sum+i;
  }
  print(sum);
  // O(n)

  int result = (n*(n+1))~/2; // 1 O(1)
  print(result);
}