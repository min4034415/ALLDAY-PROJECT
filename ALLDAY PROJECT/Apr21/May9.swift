//
//  May9.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/9/26.
//  https://leetcode.com/problems/minimum-size-subarray-sum/

import Foundation

class May9 {
    let examples = [(7,[2,3,1,2,4,3]),(4,[1,4,4]),(11, [1,1,1,1,1,1,1,1])]
    
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var currentsum = 0
        var minimimi: Int = .init(Int.max)
        for right in 0..<nums.count {
            currentsum += nums[right]
            while currentsum >= target {
                minimimi = min(minimimi, right - left + 1)
                currentsum -= nums[left]
                left += 1
            }
        }
        minimimi = minimimi == Int.max ? 0 : minimimi
        return minimimi
    }
}
