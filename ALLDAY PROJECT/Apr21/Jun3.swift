//
//  Jun3.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/3/26.
//

import Foundation

class Jun3 {
    var examples = [([2,8],[4,1],[6],[3]),([5],[3],[1],[10]),([82,14],[42,30],[6,54],[91,71])]
    func earliestFinishTime(_ landStartTime: [Int], _ landDuration: [Int], _ waterStartTime: [Int], _ waterDuration: [Int]) -> Int {
        func doItAllAgain(_ firstStart:[Int], _ firstDure:[Int], _ secondStart:[Int], _ secondDure:[Int]) -> Int {
            let countOfFirst = firstStart.count
            var firstEnd = Int.max
            for i in 0..<countOfFirst {
                firstEnd = min(firstStart[i] + firstDure[i], firstEnd)
            }
            let countOfSecond = secondStart.count
            var answer = Int.max
            for j in 0..<countOfSecond {
//                let secondBegin = max(firstEnd,secondStart[j])
                if firstEnd >= secondStart[j] {
                    answer = min(answer, firstEnd + secondDure[j])
                }
                else {
                    answer = min(answer, /*firstEnd + */secondStart[j] + secondDure[j])
                }
//                let finish = secondBegin + secondDure[j]
//                answer = min(answer,finish)
            }
            return answer
        }
        return min(doItAllAgain(landStartTime, landDuration, waterStartTime, waterDuration),doItAllAgain(waterStartTime, waterDuration, landStartTime, landDuration))
    }
}
