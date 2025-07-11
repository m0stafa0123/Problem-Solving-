class Solution {
  int romanToInt(String s) {
    Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int total = 0;
    int prevValue = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      String currentChar = s[i];
      int currentValue = romanMap[currentChar] ?? 0;

      if (currentValue < prevValue) {
        total -= currentValue;
      } else {
        total += currentValue;
      }

      prevValue = currentValue;
    }

    return total;
  }
}
