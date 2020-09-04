//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var num : Int = x ^ y
        var sum : Int = 0
    
        while (num > 0) {
            sum += num & 1 == 1 ? 1 : 0
            num = num >> 1
        }
        return sum
    }
}
