//
//  Apr30.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/30/26.
//

import Foundation

class Apr30 {
    func maximalSquare(_ matrix: [[Character]] = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]) -> Int {
        
        var dp = (0...matrix.count).map({_ in (0...matrix[0].count).map({_ in 0})})
        
        var maxSlide = 0
        
        for i in 1..<dp.count {
            for j in 1..<dp[0].count {
                if matrix[i-1][j-1] == "1" {
                    dp[i][j] = min(dp[i-1][j], min(dp[i][j-1], dp[i-1][j-1])) + 1
                }
                maxSlide = max(maxSlide, dp[i][j])
            }
        }
        
        
        return maxSlide * maxSlide
    }
}
