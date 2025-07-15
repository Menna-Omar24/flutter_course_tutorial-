// input >> processing >> output
// machine language : 010011010101
// "Mohamed": 001110110110101
// 12 : 1100
// programming languages: c c++ c# python java kotlin swift (dart) syntax
// Memory: RAM
// 4GB : 4 * 1000 * 1000 * 1000 = 4000000000 byte
// 1 byte : 8 bit
// 1 bit : 0 , 1
// int x 5 : variable
// datatype varName = value
// int : 5 , 0 , 1, 100
// double: 5.5 , 9.0 ,
// String : "Mohamed" , 'y' , "999", "y"
// bool : 5>9 : false , true

// int x = 5
// int y = 11

// 1) Arithmetic Operators
// + - * / %
// x+y = 16
// x - y = -6
// x * y = 55

// 2) Comparison operators -> bool
// > < >= =< == !=
// x>y False
// y>x True
// x == y false
// x != y true

// 3) Assign operator
// x = 8 , y = 11 , y = x
// =

// 4) Compound assign operators
// += , -= , *= , /= , %=
// x = 8
// x = x + 5 -> x+=5
// print(x)

// 5) logical operators
// && || !
// x = 8 , y = 11
// F && T -> F
// F && F -> F
// T && T -> T
// T || F -> T
// T || T -> T
// F || F -> F
// !T -> F
// !F -> T

// x=8 , y=11
// !(((x<y)&&(y=11)) || (!(x>y)&&(x<9)))
// !(T) F
void main() {
  int x = 8;
  int y = 11;
  print(!(((x < y) && (y == 11)) || (!(x > y) && (x < 9))));
}
// 6) increment / decrement operators
// ++ -- , x++ : x = x + 1 , x-- : x = x-1
// ++x , x++
// x = 8
// print(++x)
// prefix (++x) : get value after addition
// postfix (x++) : get value before addition

// int x = 9
// int y = ++x
// print(y)

// x = 8 , y = 11
// (x+y++) + (y+x++)
// result = ?
// x = ? , y = ?

// / %

// /

// 12 / 2 : 6 -> 0
// 6/2 : 3 -> 0
// 3/2 : 1 -> 1
// 1/2 : 0 -> 1
// 12 -> 1100

// %

// 12 % 5 = 2
// 13 % 9 = 4
// 12 % 2 = 0
// 5 % 9 = 5

// 823473897 / 10 =  82347389
// 823473897 % 10 = 7

// / %
// secs = 3666
// 1h = 60 m = 3600 sec
// 1m = 60 s

// secs = 3666
// h = 3666 / 3600 = 1
// secs = secs % 3600
// m = secs / 60 = 1
// secs = secs % 60 = 6
