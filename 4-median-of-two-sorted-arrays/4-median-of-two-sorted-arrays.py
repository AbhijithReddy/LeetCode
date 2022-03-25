class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        mergedList = nums1 + nums2
        mergedList = sorted(mergedList)
        median = int(len(mergedList)/2)
        if len(mergedList)%2:
            return mergedList[int(median)]
        else: return (mergedList[median-1] + mergedList[median])/2.0