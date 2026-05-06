//
//  Apr24.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/24/26.
//

import Foundation

class Apr24 {
    static func furthestDistanceFromOrigin(_ moves: String) -> Int {
        var hashAgain: [String:Int] = .init()
        for mo in moves.map({String($0)}) {
            hashAgain[mo, default: 0] += 1
        }
        var count = hashAgain["R", default: 0] > hashAgain ["L", default: 0] ? hashAgain["R", default: 0] - hashAgain ["L", default: 0] : hashAgain["L", default: 0] - hashAgain ["R", default: 0]
        return count + hashAgain["_", default: 0]
//        var indexie = ""
//        var theOneBefore = "_"
//        var theOtherOne = hashAgain.keys.min()
//        var maximus = Int.min
//        for hash in hashAgain {
//            if maximus < hash.value {
//                theOneBefore = indexie
//                maximus = hash.value
//                indexie = hash.key
//            }
//        }
//        if indexie == "_" {
//            return hashAgain[theOneBefore]! + hashAgain[indexie]!
//        } else {
//            return hashAgain[indexie]! + hashAgain["_"]!
//        }
//        return 0
    }
}
