class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1 or numRows >= len(s):
            return s
        tmp = []
        for e in range(numRows):
            tmp.append("")
        result = ""
        x = 0
        y = 1
        for element in s:
            tmp[x] += element
            if x == 0:
                y = 1
            elif x == numRows - 1:
                y = -1
            x += y
        return result.join(tmp)