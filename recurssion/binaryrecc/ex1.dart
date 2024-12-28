int recBinary(List<int> arr, int target) {
  return search(arr, target, 0, arr.length - 1);
}

int search(List<int> arr, int target, int start, int end) {
  if (start > end) {
    return -1;
  }

  int mid = (start + end) ~/ 2;

  if (target == arr[mid]) {
    return mid;
  } else if (target > arr[mid]) {
    return search(arr, target, mid + 1, end);
  } else {
    return search(arr, target, start, mid - 1);
  }
}

void main() {
  List<int> arr = [-5, 2, 4, 6, 10];
  int target = 4;
  int result = recBinary(arr, target);

  print(result);
}
