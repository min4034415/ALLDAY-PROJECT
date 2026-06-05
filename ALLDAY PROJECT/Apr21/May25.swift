//
//  May25.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/25/26.
//  https://leetcode.com/problems/jump-game-vii/description/?envType=daily-question&envId=2026-05-25

import Foundation

class May25 {
    var example = [("011010",2,3),("01101110",2,3)]
    func canReach(_ s: String, _ minJump: Int, _ maxJump: Int) -> Bool {
        var newArray = Array(s)
        let n = newArray.count
        var hiya = newArray.last
        if let hiya {
            if hiya == "1" {
                return false
            }
        }
        
        var dp = (0..<n).map {_ in false}
        dp[0] = true
        
        
        var reachable = 0
        
        for i in 1..<n {
            if i >= minJump && dp[i - minJump] {
                reachable += 1
            }
            
            if i > maxJump && dp[i - maxJump - 1] {
                reachable -= 1
            }
            
            if newArray[i] == "0" &&  reachable > 0 {
                dp[i] = true
            }
        }
        
        return dp[n - 1]
    }
}
