//
//  May21.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/21/26.
//

import Foundation

class May21 {
    var example = [([1,10,100],[1000]),([1,2,3],[4,4,4])]
    func longestCommonPrefix(_ arr1: [Int], _ arr2: [Int]) -> Int {
        var prefixes = Set<String>()
        
        for num in arr1 {
            let s = String(num)
            var prefix = ""
            
            for ch in s {
                prefix.append(ch)
                prefixes.insert(prefix)
            }
        }
        
        var result = 0
        
        for num in arr2 {
            let s = String(num)
            var prefix = ""
            
            for ch in s {
                prefix.append(ch)
                
                if prefixes.contains(prefix) {
                    result = max(result, prefix.count)
                }
            }
        }
        
        return result
    }
}
