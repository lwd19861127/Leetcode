//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var array = [String]()
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0{
                array.append("FizzBuzz")
            } else if i % 3 == 0 {
                array.append("Fizz")
            } else if i % 5 == 0 {
                array.append("Buzz")
            } else {
                array.append("\(i)")
            }
        }
        return array
    }
}
