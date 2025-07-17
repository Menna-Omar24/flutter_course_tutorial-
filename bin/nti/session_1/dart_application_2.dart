int? z ;
int x= 5;
late int y;
void main()
{

  // print(x+6);
  z=5;
  print((z??0)+6);

  if(z == null)
  {
    print(0+6);
  }
  else
  {
    print(z!+6);
  }
}