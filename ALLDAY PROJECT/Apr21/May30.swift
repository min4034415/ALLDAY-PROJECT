//
//  May30.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/30/26.
//  https://leetcode.com/problems/sqrtx/description/

import Foundation

class May30 {
    var examples = [4,8]
    func mySqrt(_ x: Int) -> Int {
        var maxVal = 0
        for i in 0...x {
            if i * i <= x {
                maxVal = max(i, maxVal)
            }
        }
        return maxVal
    }
}
