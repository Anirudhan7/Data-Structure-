void main()
{
sum(1);
}

void sum(int n){
   if(n==5){
    return;
  }
  print(n);
  sum(n+1);
 
}