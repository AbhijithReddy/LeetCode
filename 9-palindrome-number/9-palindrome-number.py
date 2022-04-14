class Solution:
    def isPalindrome(self, x: int) -> bool:
        int_max = pow(2, 31) - 1
        if x < 0 or x > int_max: return False
        n = x
        r = 0
        while int(n/10):
            r = r*10 + n%10
            n = int(n/10)
        r = r*10 + n%10
        return x == r
        