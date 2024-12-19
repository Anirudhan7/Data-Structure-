void main() {
print(reccursive(1));

}

int reccursive(int i) {
  if (i == 5) {
    return 32;
  }
  i++;
  return reccursive(i);
}
