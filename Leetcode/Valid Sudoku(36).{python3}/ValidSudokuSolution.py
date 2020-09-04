import math
from typing import List

class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        filled = []
        for i, row in enumerate(board):
            for j, digit in enumerate(row):
                if digit != '.':
                    filled += [(digit, j), (i, digit), (math.trunc(i/3), math.trunc(j/3), digit)]
        return len(filled) == len(set(filled))

board = [["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]]
print(Solution.isValidSudoku(Solution, board))