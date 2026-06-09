//
//  Jun8.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/8/26.
//

import Foundation

class Jun8 {
    let examples = [([9,12,5,10,14,3,10],10),([-3,4,3,2],2)]
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var greater: [Int] = .init()
        var lesser: [Int] = .init()
        var equal: [Int] = .init()
//        var answer: [Int] = .init()
        
        for num in nums {
            if num < pivot {
                lesser.append(num)
            }
            else if num > pivot {
                greater.append(num)
            }
            else {
                equal.append(num)
            }
        }
        return lesser + equal + greater
    }
}
