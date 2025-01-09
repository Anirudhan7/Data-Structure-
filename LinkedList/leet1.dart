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

  int result1 = solution.maxAscendingSum(array1);

  print(result1);
}
