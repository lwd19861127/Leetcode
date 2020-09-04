from typing import List

class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        k = k % len(nums)
        nums1 = nums[-k:]
        del nums[-k:]
        nums1 = nums1 + nums
        nums[:] = nums1
        print(nums)
        
list = [1,2,3,4,5,6,7]
k = 3
Solution.rotate(Solution, list, k)
print(list)


