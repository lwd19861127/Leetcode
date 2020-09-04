//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count >= 1 else {return nums.first ?? 0 }
        var lm = 0
        var gm = 0
        for i in 0..<nums.count {
            let temp = lm
            lm = gm
            gm = max(gm, temp + nums[i])
        }
        return gm
    }
}
