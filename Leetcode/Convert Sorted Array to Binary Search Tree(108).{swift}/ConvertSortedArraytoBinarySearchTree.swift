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
     func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
         return makeTree(nums, 0, nums.count - 1)
     }
     
     func makeTree(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
         guard start <= end else { return nil}
         
         let mid = (start + end) / 2
         let node = TreeNode(nums[mid])
         node.left = makeTree(nums, start, mid - 1)
         node.right = makeTree(nums, mid + 1, end)
         return node
     }
 }
