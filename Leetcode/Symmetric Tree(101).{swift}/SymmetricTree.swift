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
     func isSymmetric(_ root: TreeNode?) -> Bool {
         return checkTree(root, root)
     }

     private func checkTree(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
         if left == nil || right == nil { return left == nil && right == nil }
         if left?.val != right?.val { return false }
         return checkTree(left?.left, right?.right) && checkTree(left?.right, right?.left)
     }
 }
