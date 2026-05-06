//
//  SolutionApr21.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/21/26.
//
import Foundation

/*
 Input: temperatures = [73,74,75,71,69,72,76,73]
 Output: [1,1,4,2,1,1,0,0]
 [55,38,53,81,61,93,97,32,43,78]
 */

class SolutionApr21 {
    
    static func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//        var array: [Int] = .init()
//        for i in 0 ..< temperatures.count - 1 {
//            
//            for j in i+1 ..< temperatures.count {
//                if temperatures[j] > temperatures[i] {
//                    array.append(j - i)
////                    if j == temperatures.count - 1 {
////                        array.append(0)
////                    }
//                    break
//                }
//            }
//        }
////        while array.count != temperatures.count {
////            array.append(0)
////        }
//        return array
        let count = temperatures.count
        var array: Array<Int> = .init(repeating: 0, count: count)
        var stack: [Int] = .init()
        
        for i in 0 ..< count {
            while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
                let prev = stack.removeLast()
                array[prev] = i - prev
            }
            stack.append(i)
        }

        return array
    }
}
