from collections import Counter

class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        sC = Counter(s)
        tC = Counter(t)
        for x in sC:
            if sC[x] != tC[x]:
                return False
        return True

print(Solution.isAnagram(Solution, "cat", "ta"))