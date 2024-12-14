class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;
    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      } else {
        int currentProfit = prices[i] - minPrice;
        if (currentProfit > maxProfit) {
          maxProfit = currentProfit;
        }
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution ans = Solution();
  int result = ans.maxProfit([7, 1, 5, 3, 6, 4]);
  print(result);
}
