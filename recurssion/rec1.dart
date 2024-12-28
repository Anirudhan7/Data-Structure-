void main() {
print(reccursive(1));

}

int reccursive(int i) {
  if (i == 5) {
    return 0;
    
  }
  print(i);
  
  return reccursive(i+1);
}
