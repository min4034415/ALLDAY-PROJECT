//
//  May19.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/19/26.
//

import Foundation

class May19 {
    let example = [([1,2,3],[2,4]),([1,2,3,6],[2,3,4,5])]
    func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var set1 = Set(nums1)
        var set2 = Set(nums2)
        var intersection = set1.intersection(set2)
        
        return intersection.min() ?? -1
        }
}
