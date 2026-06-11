//
//  Jun10.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/10/26.
//

import Foundation

class Jun10 {
    var examples = [[2,2,1],[4,1,2,1,2],[1]]
    func singleNumber(_ nums: [Int]) -> Int {
        //        var set: Set<Int> = .init(nums)
        var newArr  = nums.reduce(into: [Int:Int]()) { partialResult, num in
            partialResult[num, default: 0] += 1
        }.filter {
            $0.value == 1
        }
        if newArr.keys.compactMap({Int($0)}) == nil {
            return 0
        } else {
            return newArr.keys.compactMap({Int($0)})[0]
        }
        //        return newArr
        
        //        return 0
    }
}
