//
//  May27.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/27/26.
//

import Foundation

class May27 {
    var examples = ["aaAbcBC","abc","AbBCab"]
    func numberOfSpecialChars(_ word: String) -> Int {
        var lowerSet = Set<Character>()
        var upperSet = Set<Character>()
        var bannedSet = Set<Character>()
        
        for char in word {
            if char.isLowercase {
                lowerSet.insert(char)
                
                // 이미 대문자가 나온 적이 있는데 소문자가 또 나왔다면? -> 탈락!
                let upperChar = Character(char.uppercased())
                if upperSet.contains(upperChar) {
                    bannedSet.insert(char)
                }
            } else {
                upperSet.insert(char)
            }
        }
        
        var count = 0
        for lowerChar in lowerSet {
            let upperChar = Character(lowerChar.uppercased())
            if upperSet.contains(upperChar) && !bannedSet.contains(lowerChar) {
                count += 1
            }
        }
        
        return count
    }
}
