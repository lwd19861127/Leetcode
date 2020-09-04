class Solution:
    def reverse(self, x: int) -> int:
        if x < -pow(2,31) or x > pow(2,31)-1:
            x = 0
        s = list(str(x))
        if x > 0:
            i = 0
        else:
            i = 1
        j = len(s) - 1
        while i < j:
            temp = s[i]
            s[i] = s[j]
            s[j] = temp
            i += 1
            j -= 1
        s = "".join(s)
        s = int(s)
        if s < -pow(2,31) or s > pow(2,31)-1:
            s = 0
        return s