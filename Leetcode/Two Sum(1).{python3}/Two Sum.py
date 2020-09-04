def twoSum(self, nums, target):
result = []
for scan in range(len(nums)-1):
    for i in range(scan+1, len(nums)):
        if nums[scan] + nums[i] == target:
            result = [scan, i]
            return result
