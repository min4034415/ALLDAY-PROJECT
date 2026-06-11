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
let may9 = May9()
may9.examples.forEach({ (ele, ment) in
    print(may9.minSubArrayLen(ele, ment))
})

let may11 = May11()
may11.example.forEach({print(may11.separateDigits($0))})
//let coins = [([1,2,5],11),([2],3),([1],0)]
//coins.forEach {
//    print(May7().coinChange($0.0, $0.1))
//
//}
print(["I", "want"].joined())
//print((String(123).reversed().compactMap{$0} as! [String]).joined() == String(123))
print(String(Array("i wat to".split(separator: " ").joined().reversed())))

var may10: May10 = .init()
may10.examples.forEach({print(may10.maximumSubarraySum($0.0, $0.1))})

var may15 = May15()
may15.examples.forEach({print(may15.findMin($0))})

var may17 = May17()
may17.examples.forEach({print(may17.canReach($0.0, $0.1))})

let may25 = May25()

may25.example.forEach {
    print(may25.canReach($0.0, $0.1, $0.2))
}

let may26 = May26()

may26.examples.forEach {
    print(may26.numberOfSpecialChars($0))
}

let may27 = May27()

may27.examples.forEach({print(may27.numberOfSpecialChars($0))})

let may31 = May31()
may31.examples.forEach({print(may31.asteroidsDestroyed($0.0, $0.1))})
#endif
#if true

let may12 = May12()
may12.example.forEach({print(may12.shortestPathBinaryMatrix($0))})
#endif


let may13 = May13()

may13.example.forEach({print(may13.lengthOfLastWord($0))})

let may14 = May14()

may14.example.forEach {
    print(may14.isGood($0))
}

let jun3: Jun3 = .init()
jun3.examples.forEach {
    print(jun3.earliestFinishTime($0.0, $0.1, $0.2, $0.3))
}

let may18 = May18()
may18.example.forEach({print(may18.minJumps($0))})

let may21 = May21()
may21.example.forEach({print(may21.longestCommonPrefix($0.0, $0.1))})
let may19 = May19()
may19.example.forEach { print(may19.getCommon($0.0, $0.1)) }

let may20 = May20()
may20.example.forEach({print(may20.findThePrefixCommonArray($0.0, $0.1))})

let may23 = May23()

may23.example.forEach({print(may23.check($0))})

let may28 = May28()
may28.examples.forEach({
    let tree = may28.buildTree($0)
    print(may28.maxDepth(tree))
})

let may30 = May30()
may30.examples.forEach({print(may30.mySqrt($0))})

let jun1 = Jun1()
jun1.examples.forEach({print(jun1.minimumCost($0))})

let jun2 = Jun2()
jun2.examples.forEach {
    print(jun2.earliestFinishTime($0.0, $0.1, $0.2, $0.3))
}

let jun4: Jun4 = .init()
jun4.examples.forEach { (num1, num2) in
    print(jun4.totalWaviness(num1, num2))
}

let jun8: Jun8 = .init()
jun8.examples.forEach { (arr, piv) in
    print(jun8.pivotArray(arr, piv))
}


let jun9: Jun9 = .init()
jun9.examples.forEach { (arr, nums) in
    print(jun9.maxTotalValue(arr, nums))
}

let jun10: Jun10 = .init()
jun10.examples.forEach { arr in
    print(jun10.singleNumber(arr))
}

let jun11: Jun11 = .init()
jun11.examples.forEach({print(jun11.reverseString($0))})
