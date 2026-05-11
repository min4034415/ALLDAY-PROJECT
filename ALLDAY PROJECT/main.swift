//
//  main.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 3/30/26.
//

import Foundation

print("Hello, World!")
#if false
var example: [[String]] = [["119", "97674223", "1195524421"], ["123", "456", "789"],["12", "123", "1235", "567", "88"]]
example.forEach { exam in
    print(Day1.solution(exam))
}

var example1: [String] = ["(]", "([])", "([)]", "()[]{}", "()"]
example1.forEach { exam in
    print(Leet1.isValid(exam))
}
var temperatures = [[73,74,75,71,69,72,76,73],[30,40,50,60],[30,60,90],[55,38,53,81,61,93,97,32,43,78]]
print(SolutionApr21.dailyTemperatures(temperatures[2]))

print(Apr23.distance([1,3,1,1,2]))
print(Apr23.distance([0,5,3]))
print(Apr24.furthestDistanceFromOrigin("L_RL__R"))
//[1,1,4,2,1,1,0,0]
print(Apr25().addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))), ListNode(5, ListNode(6, ListNode(4))))!)
print(Apr26().containsCycle( [["a","a","a","a"],["a","b","b","a"],["a","b","b","a"],["a","a","a","a"]]))
print(Apr26().containsCycle( [["c","c","c","a"],["c","d","c","c"],["c","c","e","c"],["f","c","c","c"]]))
print(Apr26().containsCycle( [["a","b","b"],["b","z","b"],["b","b","a"]]))
print(Apr30().maximalSquare())
var myMatrix = [[[1,2,3], [4,5,6], [7,8,9]],[[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]]

print(May4().rotate(&myMatrix[1]))
let boxGrid: [[[Character]]] = [[["#",".","#"]],[["#",".","*","."],
                                ["#","#","*","."]],[["#","#","*",".","*","."],
                                                    ["#","#","#","*",".","."],
                                                    ["#","#","#",".","#","."]]]
//print(May6().rotateTheBox(boxGrid[0]))
boxGrid.forEach {
    print(May6().rotateTheBox($0))
}
let examples = ["abcabcbb","bbbbb","pwwkew"]

examples.forEach {
    print(May8().lengthOfLongestSubstring($0))
    print("---------")
}
#endif
#if true
let may9 = May9()
may9.examples.forEach({ (ele, ment) in
    print(may9.minSubArrayLen(ele, ment))
})

#endif

