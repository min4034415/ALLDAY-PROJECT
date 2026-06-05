//
//  May26.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/26/26.
//

import Foundation

class May26 {
//        var examples = ["aaAbcBC","abc","abBCab"]
    var examples = ["aaAbcBC","abc","abBCab"]
//    var hiya = "b" as Character
    func numberOfSpecialChars(_ words: String) -> Int {
        var count = 0
        let dict = words.reduce(into: [Character:Bool]()) {
            result, value in
            result[value, default: false] = true
        }
        let set = Set(words)
        for se in set {
            if se.isLowercase {
                continue
            }
            if se.isUppercase {
                if dict[Character(se.lowercased())] != nil {
                    count += 1
                }
            }
        }
        return count
    }
}
