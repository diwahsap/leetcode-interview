class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        temp = []
        for i in nums:
            val = i * i
            temp.append(val)
        return sorted(temp)