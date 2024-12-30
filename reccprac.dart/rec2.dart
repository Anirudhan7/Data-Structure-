

recu(int n){
if(n==1){
  return 1;
}
return n+(recu(n-1));
}

void main(){
  print(recu(5));
}