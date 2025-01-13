void main(){
print(fact(4));
}

int fact(int n){
  if(n<=1){
   return n;
  }
  return n*fact(n-1);
}