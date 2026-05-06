//
//  May2.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/2/26.
//

import Foundation

class May2 {
    func rotatedDigits(_ n: Int) -> Int {
        var count = 0
        for i in 1...n {
            let string = String(i)
            if !string.contains(where: { element in
                "347".contains(element)
            }) && string.contains(where: { Character in
                "2569".contains(Character)
            }) {
                count += 1
            }
        }
        return count
       }
}
