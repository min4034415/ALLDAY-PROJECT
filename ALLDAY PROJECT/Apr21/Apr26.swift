//
//  Apr26.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/26/26.
// https://leetcode.com/problems/detect-cycles-in-2d-grid/?envType=daily-question&envId=2026-04-26

import Foundation


class Apr26 {
    func containsCycle(_ grid: [[Character]]) -> Bool {
        var arrayOfBool = (0..<grid.count).map {
            _ in (0..<grid[0].count).map {
                _ in false
            }
        }
        let rowwise = [0, 0, -1 , 1]
        let columnwise = [-1 , 1, 0, 0]
        let rowcount = grid.count
        let colcount = grid[0].count
        func dfs(r: Int, c: Int, pr: Int, pc: Int, char: Character) -> Bool {
            arrayOfBool[r][c] = true
            //벡터 순회하기
            for i in 0..<4 {
                let nr = r + rowwise[i]
                let nc = c + columnwise[i]
                
                if nr >= 0 && nr < rowcount && nc >= 0 && nc < colcount && grid[nr][nc] == char {
                    //이게 그리드 간당간당 붙어 있어야 한다는 조건이고
                    //캐릭터와 같아야 한다는건
                    if arrayOfBool[nr][nc] {
                        if nr != pr || nc != pc {
                            return true
                        }
                        continue
                    }
                    
                    if dfs(r: nr, c: nc, pr: r, pc: c, char: char) {
                        return true
                    }
                }
            }
            return false
        }
        
        for r in  0..<rowcount {
            for c in 0..<colcount {
                if !arrayOfBool[r][c] {
                    if dfs(r: r, c: c, pr: -1, pc: -1, char: grid[r][c]) {
                        return true
                    }
                }
            }
        }
        return false
    }
}
