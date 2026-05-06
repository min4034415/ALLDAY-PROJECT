//
//  Day1.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 3/30/26.
//
//
import Foundation

class Day1 {
//    https://school.programmers.co.kr/learn/courses/30/lessons/42577?language=python3
    static func solution(_ phone_book: [String]) -> Bool {
//        
        var answer = true
        let pb = phone_book.sorted()
//        for i in pb.indices {
//            for j in i+1..<pb.count {
//                if pb[j].hasPrefix(pb[i]) {
//                    return false
//                }
//            }
//        }
        for i in 0..<pb.count-1 {
            if pb[i+1].hasPrefix(pb[i]) {
                return false
            }
        }
        return answer
    }
    
    
    
}
