//
//  Apr 27.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/27/26.
//

import Foundation

class Apr27 {
    func hasValidPath(_ grid: [[Int]]) -> Bool {
        
        let m = grid.count
        let n = grid[0].count
        
        var visited = (0..<m).map {
            _ in (0..<n).map {
                _ in false
            }
        }
        
        let directions = [
            1:[(0,-1), (0,1)],
            2:[(-1,0), (1,0)],
            3:[(0,-1), (1,0)],
            4:[(0,1), (1,0)],
            5:[(0,-1), (-1,0)],
            6:[(0,1), (-1,0)]
        ]
        
        func dfs(_ r: Int, _ c: Int) -> Bool {
            if r == m - 1 && c == n - 1 {
               return true
                
            }
            
            visited[r][c] = true
            let currentPipe = grid[r][c]
            
            for (dr, dc) in directions[currentPipe] ?? []
            {
                let nr = r + dr
                let nc = c + dc
                
                
                if nr >= 0  && nr < m && nc >= 0 && nc < n  && !visited[nr][nc] {
                    let nextPipe = grid[nr][nc]
                    
                    for (ndr, ndc) in directions[nextPipe] ?? [] {
                        if nr + ndr == r && nc + ndc == c {
                            if dfs(nr, nc) {
                                return true
                            }
                        }
                    }
                }
            }
            return false
        }
        
        return dfs(0, 0)
    }
    
}
