//
//  May12.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/12/26.
//

import Foundation

class May12 {
    var example = [[[0,1],[1,0]],[[0,0,0],[1,1,0],[1,1,0]],[[1,0,0],[1,1,0],[1,1,0]]]
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        
        var rowLength = grid.count
        var colLength = grid[0].count
        
        var visited = (0..<rowLength).map {
            _ in (0..<colLength).map {
                _ in false
            }
        }
        
        var dr = [1, 1, 1, 0, 0, -1, -1, -1]
        var dc = [0, -1, 1, 1, -1, 0, -1, 1]
        
        var queue: Array<[Int]> = .init()
        if (grid[0][0] == 1 || grid[rowLength-1][colLength-1] == 1) {
            return -1
        }
        queue.append([0,0,1])
        visited[0][0] = true
        
        while !queue.isEmpty {
            var curr = queue.removeFirst()
            var r = curr[0]
            var c = curr[1]
            var dist = curr[2]
            
            if (r == rowLength - 1 && c == colLength - 1) {
                return dist
            }
            
            for i in 0..<8 {
                var nr = r + dr[i]
                var nc = c + dc[i]
                if (0 <= nr && nr < rowLength && 0 <= nc && nc < colLength && grid[nr][nc] == 0) {
                    if !visited[nr][nc] {
                        // queue.insert([nr, nc, dist+1], at: 0)
                        queue.append([nr, nc, dist+1])
                        visited[nr][nc] = true
                    }
                }
            }
        }
        
        
        return -1
    }
}
