import math
from typing import List

class Solution:
    def rotate(self, matrix: List[List[int]]) -> None:
        for i in range(len(matrix)):
            for j in range(i+1, len(matrix)):
                temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            for j in range(math.trunc((len(matrix)-1)/2)+1):
                temp = matrix[i][j]
                matrix[i][j] = matrix[i][len(matrix)-1-j]
                matrix[i][len(matrix)-1-j] = temp
