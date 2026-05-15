//
//  May10.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/10/26.
//  https://leetcode.com/problems/maximum-sum-of-distinct-subarrays-with-length-k/description/

import Foundation

class May10 {
    var examples = [([1,5,4,2,9,9,9],3),([4,4,4],3)]
    func maximumSubarraySum(_ nums: [Int], _ k: Int) -> Int {
        var sumOfAll = 0
        var currentSUm = 0
        var leftie = 0
        var countMap: [Int:Int] = .init()
        
        for rightie in 0..<nums.count {
            
            let num = nums[rightie]
            currentSUm += num
            countMap[num, default: 0] += 1
            
            if rightie - leftie + 1 > k {
                let leftNum = nums[leftie]
                currentSUm -= leftNum
                countMap[leftNum]! -= 1
                if countMap[leftNum] == 0 {
                    countMap.removeValue(forKey: leftNum)
                }
                leftie += 1
            }
            
            
            if countMap.count == k {
                sumOfAll = max(sumOfAll, currentSUm)
            }
        }
        return sumOfAll
    }
}
