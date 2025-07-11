class Solution {
  int countPrimes(int n) {
     int count = 0;
    if (n < 2) return 0;
    for (int i = 2; i < n; i++) {
            bool isprime = true;

      for ( int j = 2  ; j<= sqrt(i).toInt(); j++)
      {
        if ( i%j==0 && i != j) {
          isprime = false;
          break;
        }
      }
      if (isprime) count++;
    }
    return count;    
  }
}