//
//  May11.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/11/26.
//  https://leetcode.com/problems/separate-the-digits-in-an-array/description/?envType=daily-question&envId=2026-05-11

import Foundation

class May11 {
    var example = [[13,25,83,77],[7,1,3,9]]
    func separateDigits(_ nums: [Int]) -> [Int] {
//        var newnum = nums.compactMap({String($0)}).joined().reduce([Int]()) { partialResult, char in
//            partialResult.append(Int(String(char))!)
//        }
        Array(nums.map{String($0)}.reduce("",+)).compactMap{
            Int(String($0))
        }
        
    }
}
