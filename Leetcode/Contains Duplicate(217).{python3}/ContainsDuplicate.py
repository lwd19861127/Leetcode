from typing import List

class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
      nums.sort()
      for i in range(len(nums)-1):
      	if nums[i+1] == nums[i]:
      		print("True")
      		return True
      print("False")
      return False
      				
nums = [1,2,2,3,3,4,4]
Solution.containsDuplicate(Solution, nums)
