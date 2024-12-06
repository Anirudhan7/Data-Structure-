void main() {
  List<int> array = [12, 23, 34, 35, 46, 57, 78,89,97,99,100];
  int target = 23;
  int result = binarySearch(array, target);
  print(result);
}

int binarySearch(List<int> array, int target) {
  int start = 0;
  int end = array.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2.floor();
    if (target < array[mid]) {
      end = mid - 1;
    } else if (target > array[mid]) {
      start = mid + 1;
    } else {
      return mid;
    }
  }
  return -1;
}
