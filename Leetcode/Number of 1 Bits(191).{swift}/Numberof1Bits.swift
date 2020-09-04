//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var n = UInt32(n)
        var res: UInt32 = 0
        for i in 0..<32 {
            res += (n & 1)
            n = n >> 1
        }
        return Int(res)
    }
}
