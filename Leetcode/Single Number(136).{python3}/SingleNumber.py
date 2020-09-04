from typing import List

class Solution:
    def singleNumber(self, nums: List[int]) -> int:
    	nums.sort()
    	for i in range(0, len(nums), 2):
    		if i+1 == len(nums) or nums[i+1] != nums[i]:
    			print(nums[i])
    			return nums[i]

nums = [1,1,2,2,4]
Solution.singleNumber(Solution, nums)
