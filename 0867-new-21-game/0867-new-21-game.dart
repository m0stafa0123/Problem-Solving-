class Solution {
  double? new21Game(int n, int k, int maxPts) {
    if (k == 0 || n >= k + maxPts) return 1.0;

    List<double> dp = List.filled(n + 1, 0);
    dp[0] = 1.0;

    double windowSum = 1.0;
    double result = 0.0;

    for (int i = 1; i <= n; i++) {
      dp[i] = windowSum / maxPts;

      if (i < k) {
        windowSum += dp[i]; // نقدر نكمل لعب
      } else {
        result += dp[i];    // خلص اللعب، اجمع الناتج
      }

      if (i - maxPts >= 0) {
        windowSum -= dp[i - maxPts]; // نخصم من النافذة
      }
    }

    return result;
  }
}
