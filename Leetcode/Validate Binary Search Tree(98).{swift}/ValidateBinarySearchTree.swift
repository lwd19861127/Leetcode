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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isValidBSTRecursive(root, Int.min, Int.max)
    }
    
    func isValidBSTRecursive(_ node: TreeNode?, _ min: Int, _ max: Int) -> Bool {
        if let currentNode = node {
            if currentNode.val < max && currentNode.val > min &&
                isValidBSTRecursive(currentNode.left, min, currentNode.val) &&
                isValidBSTRecursive(currentNode.right, currentNode.val, max) {
                    return true
            }
        } else {
            return true
        }
        return false
    }
}
