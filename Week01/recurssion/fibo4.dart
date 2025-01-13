int fibo(int n){
  if(n<=1){
   return n;
  }

  return fibo(n-1)+fibo(n-2);
}

void dispFibo(n){
for(int i =0;i<n;i++){
  print(fibo(i));
}
}
void main(){
  // print(fibo(5));
  dispFibo(5);
}