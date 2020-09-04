from typing import List

def removeDuplicates(nums: List[int]):
    if len(nums) > 0:
        x = 0
        while x != len(nums)-1:
            numRange = len(nums)
            for i in range(x, numRange):
                if i+1 < len(nums):
                    if nums[i+1] == nums[i]:
                        del nums[i+1]
                        break
                    else:
                        x = i+1
        return len(nums)
    else:
        return 0
nums = [0,]
print(removeDuplicates(nums))
