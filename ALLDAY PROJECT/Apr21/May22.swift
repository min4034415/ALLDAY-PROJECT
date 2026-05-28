//
//  May22.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/22/26.
//

import Foundation

class May22 {
    let example = [([4,5,6,7,0,1,2],0),([4,5,6,7,0,1,2],3),([1],0)]
    func search(_ nums: [Int], _ target: Int) -> Int {
        return(nums.firstIndex(of: target)!)
    }
}
