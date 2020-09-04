# Count and Say

class Solution:
    def countAndSay(self, n: int) -> str:
        if n == 1:
            return "1"
        CountAndSay = Solution.countAndSay(self, n - 1)
        s = ""
        count = 1
        for i in range(len(CountAndSay)):
            if i < len(CountAndSay) - 1:
                if CountAndSay[i] == CountAndSay[i+1]:
                    count += 1
                    continue
                else:
                    s = s + str(count) + CountAndSay[i]
                    count = 1
            else:
                s = s + str(count) + CountAndSay[i]
        return s

print(Solution.countAndSay(Solution, 30))