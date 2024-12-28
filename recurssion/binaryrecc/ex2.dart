void main() {
  List<int> nums = [10, 20, 30, 40, 50, 60, 70, 80];
  int low = 0;
  int high = nums.length - 1;
  int target = 20;

  binaryrecursion(nums, target, low, high);
}

binaryrecursion(List<int> nums, int target, int low, int high) {
  if (low <= high) {
    int mid = (low + high) ~/ 2;
    if (nums[mid] == target) {
      print(mid);
      return;
    } else if (target < nums[mid]) {
      binaryrecursion(nums, target, low, mid - 1);
    } else if (target > nums[mid]) {
      binaryrecursion(nums, target, mid + 1, high);
    }
  } else {
    print('no target found');
    return;
  }
}