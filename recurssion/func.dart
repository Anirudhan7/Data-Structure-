void main(){

print(reccursive(0));

}

int reccursive(int i){
// int? i;
 print(i);
  if(i==5){
    return 0;
  }
  i++;
return reccursive(i);
}