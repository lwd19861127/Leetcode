from typing import List

class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        i = len(digits) - 1
        while i >= 0:
            if digits[i] < 9:
                digits[i] += 1
                return digits
            if digits[i] == 9:
                digits[i] = 0
                i -= 1
        newDigits = []
        newDigits.append(1)
        for _ in range(len(digits)):
            newDigits.append(0)
        return newDigits