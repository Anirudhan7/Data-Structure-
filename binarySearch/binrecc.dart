void main() {
  List<int> array = [10, 20, 30, 40, 50, 60, 70, 80];
  int start = 0;
  int end = array.length - 1;
  int target = 20;

  binaryrecursion(array, target, start, end);
}

binaryrecursion(List<int> array, int target, int start, int end) {
  if (start <= end) {
    int mid = (start + end) ~/ 2;
    if (array[mid] == target) {
      print(mid);
      return;
    } else if (target < array[mid]) {
      binaryrecursion(array, target, start, mid - 1);
    } else if (target > array[mid]) {
      binaryrecursion(array, target, mid + 1, end);
    }
  } else {
    print('no target found');
    return;
  }
}