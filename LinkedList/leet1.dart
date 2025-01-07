class Solution {
  int maxAscendingSum(List<int> nums) {
    int count = nums[0], max = 0;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] < nums[i])
        count += nums[i];
      else {
        if (max < count) max = count;
        count = nums[i];
      }
    }
    if (max < count) max = count;
    return max;
  }
}

void main() {
  Solution solution = Solution();
  List<int> array1 = [10, 20, 30, 5, 10, 50];
  List<int> array2 = [10, 20, 30, 40, 50];
  List<int> array3 = [12, 17, 15, 13, 10, 11, 12];

  int result1 = solution.maxAscendingSum(array1);
  int result2 = solution.maxAscendingSum(array2);
  int result3 = solution.maxAscendingSum(array3);

  print(result1);
  print(result2);
  print(result3);
}
