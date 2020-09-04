//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func isValid(_ s: String) -> Bool {
        var opened = ""
        for char in s {
            if char == "(" {
                opened += ")"
            } else if char == "{" {
                opened += "}"
            } else if char == "[" {
                opened += "]"
            } else {
                if let prevVal = opened.last, prevVal == char {
                    opened.removeLast()
                } else {
                    return false
                }
            }
        }
        return opened.isEmpty
    }
}
