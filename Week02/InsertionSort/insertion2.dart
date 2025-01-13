void main() {
  List<int> array = [21, 43, 64, 12, 11, 59];
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > temp) {
     array[j+1]=array[j];
     j--;
    }
    array[j+1]=temp;
  }
  print(array);
}
