void main() {
  List<int> unsortedList = [34, 7, 23, 32, 5, 62];
  List<int> sortedList = mergeSort(unsortedList);
  print(sortedList); 
}

// The mergeSort function is a recursive function that divides the list into smaller parts
List<int> mergeSort(List<int> arr) {
  // Base case: If the list has 1 or 0 elements, it is already sorted
  if (arr.length <= 1) {
    return arr;
  }
  
  // Find the middle point to divide the list into two halves
  int mid = arr.length ~/ 2;
  
  // Recursively split and sort the left part of the list
  List<int> left = mergeSort(arr.sublist(0, mid));
  
  // Recursively split and sort the right part of the list
  List<int> right = mergeSort(arr.sublist(mid));
  
  // Merge the sorted left and right parts
  return merge(left, right);
}

// The merge function takes two sorted lists and merges them into one sorted list
List<int> merge(List<int> left, List<int> right) {
  // Result list to store the merged sorted elements
  List<int> res = [];
  
  // Initialize two pointers i and j to traverse both the left and right lists
  int i = 0;
  int j = 0;

  // Merge elements while both left and right lists have remaining elements
  while (i < left.length && j < right.length) {
    // If the element in left is smaller or equal, add it to the result list
    if (left[i] <= right[j]) {
      res.add(left[i]);
      i++; // Move the pointer in the left list
    } else {
      // If the element in right is smaller, add it to the result list
      res.add(right[j]);
      j++; // Move the pointer in the right list
    }
  }

  // If there are remaining elements in the left list, add them to the result
  res.addAll(left.sublist(i));
  
  // If there are remaining elements in the right list, add them to the result
  res.addAll(right.sublist(j));

  // Return the merged and sorted list
  return res;
}
