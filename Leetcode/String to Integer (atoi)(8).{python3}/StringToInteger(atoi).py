# String to Integer (atoi)

class Solution:
    def myAtoi(self, str: str) -> int:
        str = str.strip()
        if len(str) <= 0:
            return 0
        if str[0] != '-' and str[0] != '+' and not str[0].isdigit():
            return 0
        if str[0] == '-' or str[0] == '+':
            start = 1
        else:
            start = 0
        end = len(str)
        for i in range(start, len(str)):
            if not str[i].isdigit():
                end = i
                break
        if end > start:
            temp = str[start:end]
        else:
            return 0
        digit = int(temp)
        if str[0] == '-':
            digit = -digit
        if digit > pow(2, 31) - 1:
            digit = pow(2, 31) - 1
        elif digit < -pow(2, 31):
            digit = -pow(2, 31)
        return digit
print(Solution.myAtoi(Solution, " "))