//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func romanToInt(_ s: String) -> Int {
        var map:[Character:Int]=["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        var ret :Int = 0
        if !s.isEmpty
        {
            for keys:String.Index in s.indices
            {
                if   keys < s.index(before: s.endIndex)
                     && map[s[keys]]! < map[s[s.index(after: keys)]]!
                {
                    ret -= map[s[keys]]!
                }
                else
                {
                    ret += map[s[keys]]!
                }
            }
        }
        return ret
    }
}
