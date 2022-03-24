class Solution:
    def maxArea(self, height: List[int]) -> int:
        x, y = 0, len(height) - 1
        area = 0
        while x < y:
            area = max(area, (y-x)*min(height[x], height[y]))
            if height[x] < height[y]:
                x += 1
            else:
                y -= 1
        return area