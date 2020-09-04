//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation

class Solution {
    var num: [Int]
    
    init(_ nums: [Int]) {
        self.num = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return self.num
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        return self.num.shuffled()
    }

}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(nums)
 * let ret_1: [Int] = obj.reset()
 * let ret_2: [Int] = obj.shuffle()
 */
