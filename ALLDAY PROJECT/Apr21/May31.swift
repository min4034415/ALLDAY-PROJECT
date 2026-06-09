//
//  May31.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/31/26.
//

import Foundation

class May31 {
    let examples = [(10,[3,9,19,5,21]),(3,[4,9,23,4])]
    func asteroidsDestroyed(_ mass: Int, _ asteroids: [Int]) -> Bool {
        var destroyers = {
            asteroids.sorted()
        }()
        var currentMass: Int64 = Int64(mass)
        
        for destroyer in destroyers {
            if currentMass < Int64(destroyer) {
                return false
            }
            currentMass += Int64(destroyer)
        }
        
        return true
    }
}
