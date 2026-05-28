//
//  May23.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/23/26.
//

import Foundation

class May23 {
    let example = [[3,4,5,1,2],[2,1,3,4],[1,2,3],[11,11,1,20]]
    
    func check(_ nums: [Int]) -> Bool {
//        nums.first == nums.min()
//        let newnum = (nums + nums).compactMap({String($0)}).joined()
//        let sorted = nums.sorted().compactMap({String($0)}).joined()
//        
//        return newnum.contains(sorted)
        var zero = 0
        let n = nums.count
        for i in 0..<n {
            if nums[i] > nums[(i+1)%n] {
                zero += 1
            }
        }
        
        return zero <= 1
    }
}
