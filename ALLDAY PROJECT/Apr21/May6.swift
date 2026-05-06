//
//  May6.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/6/26.
//
/*
 let boxGrid: [[[Character]]] = [[["#",".","#"]],[["#",".","*","."],["#","#","*","."]],[["#","#","*",".","*","."],["#","#","#","*",".","."],["#","#","#",".","#","."]]]
 */

import Foundation

class May6 {
//    func rotateTheBox(_ boxGrid: [[Character]]) -> [[Character]] {
//        
//        let box = boxGrid
//        let m = box.count
//        let n = box[0].count
//        
//        
//        print(boxGrid)
//        return []
//    }
    func rotateTheBox(_ box: [[Character]]) -> [[Character]] {
        var box = box
        let m = box.count
        //박스의 개수를 세요 몇개인지 옆으로
        let n = box[0].count
        
        // 1. Apply Gravity
        for r in 0..<m {
            // Track the position where the next stone should land
            var lowestAvailable = n - 1
            
            // Iterate from right to left
            for c in stride(from: n - 1, through: 0, by: -1) {
                if box[r][c] == "*" {
                    // Obstacle: reset the landing spot to the left of it
                    lowestAvailable = c - 1
                } else if box[r][c] == "#" {
                    // Stone: "drop" it to the lowest available spot
                    box[r][c] = "."
                    box[r][lowestAvailable] = "#"
                    lowestAvailable -= 1
                }
            }
        }
        
        // 2. Rotate 90 Degrees Clockwise
        // New dimensions: rows = n, cols = m
        var rotatedBox = Array(repeating: Array(repeating: Character("."), count: m), count: n)
        
        for r in 0..<m {
            for c in 0..<n {
                rotatedBox[c][m - 1 - r] = box[r][c]
            }
        }
        
        return rotatedBox
    }
}
