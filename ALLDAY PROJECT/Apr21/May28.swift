//
//  May28.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/28/26.
//

import Foundation

class May28 {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
    }
    var examples = [[3,9,20,nil,nil,15,7],[1,nil,2]]
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
    
    func buildTree(_ arr: [Int?]) -> TreeNode? {
        guard let first = arr.first ?? nil else { return nil }
        let root = TreeNode(first)
        var queue: [TreeNode] = [root]
        var index = 1
        while index < arr.count {
            let current = queue.removeFirst()
            if index < arr.count, let leftVal = arr[index] {
                current.left = TreeNode(leftVal)
                queue.append(current.left!)
            }
            index += 1
            if index < arr.count, let rightVal = arr[index] {
                current.right = TreeNode(rightVal)
                queue.append(current.right!)
            }
            index += 1
        }
        return root
    }
}
