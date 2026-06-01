//
//  Jun1.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/1/26.
//  https://leetcode.com/problems/minimum-cost-of-buying-candies-with-discount/description/?envType=daily-question&envId=2026-06-01

import Foundation

class Jun1 {
    //2267
    var examples = [[1,2,3],[6,5,7,9,2,2],[5,5],[3,3,3,1]]
    func minimumCost(_ cost: [Int]) -> Int {
        var sumOfAll = cost.reduce(0, +)
        var newArr = cost.sorted{$0>$1}
        var iTobeExempt = 0
//        for i in stride(from: 0, through: cost.count, by: 3) {
        var costcount = cost.count
        if costcount < 3 {
            return sumOfAll
        }
        for i in stride(from: 2, to: costcount, by: 3) {
                iTobeExempt += newArr[i]
        }
        return sumOfAll - iTobeExempt
    }
}
