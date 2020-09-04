//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation

class Solution {
     func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
         var index1 = 0
         var index2 = 0
     
         while index2 < n {
             if nums1[index1] > nums2[index2] || index1-index2 >= m {
                 nums1.insert(nums2[index2], at: index1)
                 nums1.removeLast()
                 index1 += 1
                 index2 += 1
             } else if nums1[index1] <= nums2[index2] {
                 index1 += 1
             }
         }
     }
 }
