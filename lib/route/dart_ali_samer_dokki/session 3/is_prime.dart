main(){
  bool result = isPrime(7);
  if(result){
    print("Prime");
  }else{
    print("Not prime");
  }
}
// 7 :  2 3 4 5 6
bool isPrime(int number){
  int counter = 0;
  for(int i=2;i<number;i++){
    if(number%i==0){
      print("Not prime");
      return false;
    }
  }
  if(counter>2){
    print("not prime");
    return false;
  }else{
    print("prime");
    return true;
  }
}