void main() {
  List<int> unsortedList = [34, 7, 23, 32, 5, 62];
  List<int> sortedList = mergeSort(unsortedList);
  print(sortedList); 
}

List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = arr.length ~/ 2;
  List<int> left = mergeSort(arr.sublist(0, mid));
  List<int> right = mergeSort(arr.sublist(mid));
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> res = [];
  int i = 0;
  int j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      res.add(left[i]);
      i++;
    } else {
      res.add(right[j]);
      j++;
    }
  }
  res.addAll(left.sublist(i));
  res.addAll(right.sublist(j));

  return res;
}

