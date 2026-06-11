//
//  Jun11.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/11/26.
//

import Foundation

class Jun11 {
    var examples: [[Character]] = [["h","e","l","l","o"],["H","a","n","n","a","h"]]
    func reverseString(_ s: inout [Character]) {
        let countcount = s.count
        for jen in 0..<countcount/2 {
            (s[jen],s[countcount - jen]) = (s[countcount - jen], s[jen])
        }
    }
}
