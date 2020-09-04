//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 /**
  * Definition for a binary tree node.
  * public class TreeNode {
  *     public var val: Int
  *     public var left: TreeNode?
  *     public var right: TreeNode?
  *     public init() { self.val = 0; self.left = nil; self.right = nil; }
  *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
  *         self.val = val
  *         self.left = left
  *         self.right = right
  *     }
  * }
  */
 class Solution {
     func levelOrder(_ root: TreeNode?) -> [[Int]] {
         guard let root = root else { return [] }
         var res = [[Int]]()
         checkValuesOnLevel(&res, root, 0)
         return res
     }
     
     func checkValuesOnLevel(_ res: inout [[Int]], _ node: TreeNode?, _ level: Int) {
         guard let node = node else { return }
         if res.count - 1 < level {
             res.append([Int]())
         }
         res[level].append(node.val)
         
         checkValuesOnLevel(&res, node.left, level + 1)
         checkValuesOnLevel(&res, node.right, level + 1)
     }
 }
