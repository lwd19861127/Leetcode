from typing import List

class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        i = len(nums)
        j = 0
        while i > 0:
            if nums[j] == 0:
                del nums[j]
                nums.append(0)
                i -= 1
            else:
                j += 1
                i -= 1


nums = [0,0,1]
Solution.moveZeroes(Solution, nums)