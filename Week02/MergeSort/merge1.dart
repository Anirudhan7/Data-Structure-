void mergeSort(List<int> arr) {
  // Base case: stop recursion if the list has one or no elements
  if (arr.length <= 1) return;

  // Declare merge function first
  void merge(List<int> arr, List<int> left, List<int> right) {
    int i = 0;
    int j = 0;
    int k = 0;

    // Merge the two sorted halves
    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        arr[k++] = left[i++];
      } else {
        arr[k++] = right[j++];
      }
    }

    // Add remaining elements from left
    while (i < left.length) {
      arr[k++] = left[i++];
    }

    // Add remaining elements from right
    while (j < right.length) {
      arr[k++] = right[j++];
    }
  }

  // Split the array
  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  // Recursively sort the halves
  mergeSort(left);
  mergeSort(right);

  // Merge sorted halves
  merge(arr, left, right);
}

void main() {
  List<int> arr = [9, 8, 7, 6, 5];
  mergeSort(arr);
  print(arr); // Output: [5, 6, 7, 8, 9]
}
