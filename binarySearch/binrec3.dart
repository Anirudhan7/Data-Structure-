int binarySearch(List<int> array, target, start, end) {
  if (start > end) {
    return -1;
  }
  int mid = (start + end) ~/ 2;
  if (array[mid] == target) {
    return mid;
  } else if (target < array[mid]) {
    return binarySearch(array, target, start, mid - 1);
  } else {
    return binarySearch(array, target, mid + 1, end);
  }
}

void main() {
  List<int> array = [10, 20, 30, 40, 50, 60, 70];
  int target = 20;
  int start = 0;
  int end = array.length - 1;
  print(binarySearch(array, target, start, end));
}
