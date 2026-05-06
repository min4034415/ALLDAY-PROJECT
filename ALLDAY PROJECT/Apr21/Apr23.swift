//
//  Apr23.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/23/26.
//  https://leetcode.com/problems/sum-of-distances/description/?envType=daily-question&envId=2026-04-23

import Foundation

class Apr23 {
    //    static func distance(_ nums: [Int]) -> [Int] {
    //        var mujisungHash: [Int: [Int]] = .init()
    //        var gottobereturned = Array(repeating: 0, count: nums.count)
    //        for el in nums.enumerated() {
    //            mujisungHash[el.element, default: []].append(el.offset)
    //        }
    //        print(mujisungHash)
    //        for i in 0..<nums.count {
    //            //있을 경우
    //            //없을 경우
    //            var curr = nums[i]
    //            if let nina = mujisungHash[curr] {
    //                var sum = 0
    //                for nin in nina {
    //                    sum += abs(i - nin)
    //                }
    //                gottobereturned[i] = sum
    //            }
    //        }
    //        return gottobereturned
    //    }
    static func distance(_ nums: [Int]) -> [Int64] {
        var mujisungHash: [Int: [Int]] = .init()
        var gottobereturned = Array(repeating: Int64(0), count: nums.count)
        for el in nums.enumerated() {
            mujisungHash[el.element, default: []].append(el.offset)
        }
        for (_, nina) in mujisungHash {
            let n = nina.count
            if n == 1 { continue }
            var prefix = Array(repeating: Int64(0), count: n + 1)
            for i in 0..<n {
                prefix[i + 1] = prefix[i] + Int64(nina[i])
            }
            for i in 0..<n {
                let curr = Int64(nina[i])
                let left = curr * Int64(i) - prefix[i]
                let right = (prefix[n] - prefix[i + 1]) - curr * Int64(n - i - 1)
                gottobereturned[nina[i]] = left + right
            }
        }
        return gottobereturned
    }
    
}
