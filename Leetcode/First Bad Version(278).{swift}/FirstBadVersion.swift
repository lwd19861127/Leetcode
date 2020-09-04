//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        guard n>=0 else {return 0}
        var start = 1
        var end = n
        while (start < end) {
            var mid = start / 2 + end / 2
            if (isBadVersion(mid)) {
                end = mid
            }else{
                start = mid + 1
            }
        }
        return end
    }
}
