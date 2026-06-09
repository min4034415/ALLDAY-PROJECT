//
//  Jun9.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/9/26.
//

import Foundation

class Jun9 {
    var examples = [([1,3,2],2),([4,2,5,1],3)]
    func maxTotalValue(_ nums: [Int], _ k: Int) -> Int {
        k*(nums.max()! - nums.min()!)
    }
}
