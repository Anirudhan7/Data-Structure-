void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 5;
  int start=0;
  print(binarySearch(array, target, start, array.length - 1));
}

int binarySearch(List<int> array, int target, int start, int end) {
  if (start > end) {
    return -1;
  }

  int mid = (start + end) ~/ 2;

  if (array[mid] == target) {
    return mid;
  } else if (target > array[mid]) {
    return binarySearch(array, target, mid + 1, end);
  } else {
    return binarySearch(array, target, start, mid - 1);
  }
}
