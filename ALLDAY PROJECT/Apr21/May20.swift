//
//  May20.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/20/26.
//

import Foundation

class May20 {
    var example = [([1,3,2,4],[3,1,2,4]), ([2,3,1],[3,1,2])]
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var seenA = Set<Int>()
        var seenB = Set<Int>()
        var result = [Int]()

        for i in 0..<A.count {
            seenA.insert(A[i])
            seenB.insert(B[i])

            let commonCount = seenA.intersection(seenB).count
            result.append(commonCount)
        }

        return result
    }
        
//        return [23]

}
