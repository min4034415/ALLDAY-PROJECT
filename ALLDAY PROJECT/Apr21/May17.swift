//
//  May17.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/17/26.
//

import Foundation

class May17 {
    var examples = [([4,2,3,0,3,1,2],5),([4,2,3,0,3,1,2],0),([3,0,2,1,2],2)]
    func canReach(_ arr: [Int], _ start: Int) -> Bool {
        var visited: Set<Int> = .init()
        var queue: [Int] = [start]
        while !queue.isEmpty {
            var curr = queue.removeLast()
            visited.insert(curr)
            if arr[curr] == 0 {
                return true
            }
            if !visited.contains(curr) {
                visited.insert(curr)
                continue
            }
            
            let jump = arr[curr]
            let jr = curr + jump
            if jr < arr.count && !visited.contains(jr) {
//                visited.insert(jr)
                queue.append(jr)
            }
            
            let jl = curr - jump
            if jl >= 0 && !visited.contains(jl) {
                queue.append(jl)
            }
        }
        return false
    }
}
