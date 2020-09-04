//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 {
            return []
        }
        var result = [[1]]
        for i in 1...numRows {
            var numRow = [Int]()
            var lastNumRow = result[i - 1]
            for j in 0..<i {
                if j == 0 || j == i - 1 {
                    numRow.append(1)
                } else {
                    numRow.append(lastNumRow[j - 1] + lastNumRow[j])
                }
            }
            result.append(numRow)
        }
        result.remove(at: 0)
        return result
    }
}
