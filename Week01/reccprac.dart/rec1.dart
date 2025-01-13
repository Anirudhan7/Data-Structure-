recu1(int n) {
  if (n == 5) {
    return;
  }
  print(n);
  return recu1(n + 1);
}

void main() {
  recu1(1);
}
