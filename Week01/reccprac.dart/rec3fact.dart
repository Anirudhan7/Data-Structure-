int recc(int n){
  if(n<=1){
    return n;
  }
  return n*recc(n-1);
}

void main(){
  print(recc(4));
}