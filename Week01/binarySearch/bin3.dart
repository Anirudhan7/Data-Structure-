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

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 3;
int result =binarySearch(array, target);
print(result);
}
