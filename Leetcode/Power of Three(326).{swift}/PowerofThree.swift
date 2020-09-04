//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n <= 0 {return false}
        if n == 1 {return true}
        return (n % 3 == 0) && isPowerOfThree(n / 3)
    }
}
