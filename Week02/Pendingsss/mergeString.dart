List<String> mergeSort(List<String> array) {
  if (array.length <= 1) {
    return array;
  }
  int middle = array.length ~/ 2;
  List<String> left = mergeSort(array.sublist(0, middle));
  List<String> right = mergeSort(array.sublist(middle));
  return merge(left, right);
}

List<String> merge(List<String> left, List<String> right) {
  List<String> result = [];
  int i = 0;
  int j = 0;
  while (i < left.length && j < right.length) {
    if (left[i].codeUnitAt(0) < right[j].codeUnitAt(0)) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));
  return result;
}

void main() {
  List<String> array = ["avd", "adadc", "Adadf", "gfgfgfg"];
  print(mergeSort(array));
}
