//
//  May18.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/18/26.
//

import Foundation

class May18 {
    var example:[[Int]] = [[100,-23,-23,404,100,23,23,23,3,404],[7],[7,6,9,6,9,6,9,7]]
    func minJumps(_ arr: [Int]) -> Int {
        let n = arr.count
        if n == 1 {
            return 0
        }
        var graph = arr.enumerated().reduce(into: [Int:[Int]]()) { result, value in
            result[value.element,default: []].append(value.offset)
        }
        
        var queue: Array<Int> = .init(arrayLiteral: 0)
//        print(queue)
        var visited: Set<Int> = .init(arrayLiteral: 0)
        
        var head: Int = .init(0)
        var steps: Int = .init(0)
        
        
        while head < queue.count {
            let levelSize = queue.count - head
            
            for _ in 0..<levelSize {
                let curr = queue[head]
                head += 1
                
                if curr == n - 1 {
                    return steps
                }
                
                var neighbors: [Int] = .init()
                
                if curr + 1 < n {
                    neighbors.append(curr + 1)
                }
                if curr - 1 >= 0 {
                    neighbors.append(curr - 1)
                }
                if let sameValues = graph[arr[curr]] {
                    neighbors.append(contentsOf: sameValues)
                    graph[arr[curr]] = nil
                }
                
                for neighbor in neighbors {
                    if !visited.contains(neighbor) {
                        visited.insert(neighbor)
                        queue.append(neighbor)
                    }
                }
            }
            
            steps += 1
        }
//        print(graph)
        return steps
    }
}
