//
//  May8.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/8/26.
//

import Foundation

class May8 {
    
//    let examples = ["abcabcbb","bbbbb","pwwkew"]

    func lengthOfLongestSubstring(_ s: String) -> Int {
//        let dict = s.reduce(into: [Character: Int]()) { result, character in
//            result[character, default: 0] += 1
//        }
//        var dict = [Character:[Int]]()
//        for (ele, ind) in Array(s).enumerated() {
//            dict[ind,default: []].append(ele)
//        }
        var characters = Array(s)
        var set = Set<Character>()
        
        var left = 0
        var maxLength = 0
        
        for righ in 0..<characters.count {
            while set.contains(characters[righ]) {
//                print(characters[righ], separator: "")
                set.remove(characters[left])
//                print(characters[left], separator: "")
                left += 1
            }
            
            set.insert(characters[righ])
            maxLength = max(maxLength, righ - left + 1)
        }
        
        
        return maxLength
    }
}
