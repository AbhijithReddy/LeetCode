class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        result = []
        length = len(nums)
        for x in range(length):
            y = x+1
            while y < length:
                if nums[x] + nums[y] == target:
                    result.append(x)
                    result.append(y)
                    break
                else: y += 1
        # else:
        #     continue
        # break
        #     for y in range(length):
        #         if x == y:
        #             continue
        #         elif nums[x] + nums[y] == target:
        #             result.append(x)
        #             result.append(y)
        #             break
        #     else:
        #         continue
        #     break
        return result