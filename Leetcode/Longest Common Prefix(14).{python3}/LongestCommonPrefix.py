#LongestCommonPrefix

from typing import List

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) > 0:
            shortest = strs[0]
            for str in strs:
                if len(str) < len(shortest):
                    shortest = str
            n = len(shortest)
            while n > 0:
                match = True
                for str in strs:
                    a = str[0:n]
                    b = shortest[0:n]
                    if str[0:n] != shortest[0:n]:
                        match = False
                        n -= 1
                        break
                if match:
                    return shortest[0:n]
            return ""
        return ""


print(Solution.longestCommonPrefix(Solution, ["flower","abow","flight"]))