//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else { return 0 }
        var sieve = [Bool](repeating: true, count: n)
        var count = n / 2
        var i = 3
        
        while i * i < n {
            if sieve[i] {
                var j = i * i
                while j < n {
                    if sieve[j] {
                        count -= 1
                        sieve[j] = false
                    }
                    j += 2 * i
                }
            }
            i += 2
        }
        return count
    }
}
