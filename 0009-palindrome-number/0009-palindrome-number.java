class Solution {
    public boolean isPalindrome(int x) {
        String str = Integer.toString(x);
        String reversed = "";

        for (int i = str.length() - 1; i >= 0; i--) {
            reversed += str.charAt(i);
        }

        return str.equals(reversed);
    }
}
