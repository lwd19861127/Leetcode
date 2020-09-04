from typing import List

class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        intersection = []
        nums1.sort()
        nums2.sort()
        i = 0
        j = 0
        while i < len(nums1) and j < len(nums2):
            if nums1[i] == nums2[j]:
                intersection.append(nums1[i])
                i += 1
                j += 1
            elif nums1[i] > nums2[j]:
                j += 1
            else:
                i += 1
        print(intersection)
        return intersection

nums1 = [1,2,2,1]
nums2 = [2,2]
Solution.intersect(Solution, nums1, nums2)