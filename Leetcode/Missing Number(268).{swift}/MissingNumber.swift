//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result:Int = nums.count
        for i in 0..<nums.count{
            result ^= i ^ nums[i]
        }
        return result
    }
}
