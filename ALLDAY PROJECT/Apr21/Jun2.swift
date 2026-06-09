//
//  Jun2.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/2/26.
//

import Foundation

class Jun2 {
    var examples = [([2,8],[4,1],[6],[3]),([5],[3],[1],[10])]
    func earliestFinishTime(_ landStartTime: [Int], _ landDuration: [Int], _ waterStartTime: [Int], _ waterDuration: [Int]) -> Int {
        let countLand = landStartTime.count
        let countWater = waterStartTime.count
        var arrayOfWhatever: [Int] = .init()
        func checkcheck(_ firstart: [Int], _ firdura: [Int], _ secostart: [Int], _ secodura: [Int]) -> Int {
            var earlyBird = Int.max
            for i in 0..<firstart.count {
                earlyBird = min(earlyBird, firstart[i]+firdura[i])
            }
            
            var answer = Int.max
            for j in 0..<secostart.count {
                let secondBegin = max(earlyBird, secostart[j])
                let fini = secondBegin+secodura[j]
                answer = min(answer, fini)
            }
            return answer
        }
        let landFirst = checkcheck(landStartTime, landDuration, waterStartTime, waterDuration)
        let waterFirst = checkcheck(waterStartTime, waterDuration, landStartTime, landDuration)
        return min(landFirst,waterFirst)
//        for i in 0..<countLand {
//            for j in 0..<countWater {
//                let water = waterStartTime[j]+waterDuration[j]
//                let land = landStartTime[i]+landDuration[i]
////                var duration = 0
//                if water == land {
//                    arrayOfWhatever.append(water + waterDuration[j])
//                } else {
//                    arrayOfWhatever.append(water + land)
//                }
//                
//            }
//        }
//        return arrayOfWhatever.min()!
//        return 0
    }
}
