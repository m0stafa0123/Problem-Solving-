class Solution {
  int maxSubArray(List<int> nums) {
   int currentsum = 0;
    int maxsum = nums[0];
    
    for (int i = 0; i < nums.length; i++) {
      currentsum += nums[i];
      if (currentsum < nums[i]) {
        currentsum = nums[i];
      }
      if (currentsum > maxsum) {
        maxsum = currentsum;
      }
    }
    return maxsum;
}
}