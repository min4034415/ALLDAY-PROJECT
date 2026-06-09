//
//  Jun4.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/4/26.
//

import Foundation

class Jun4 {
    let examples = [(120,130),(198,202),(4848,4848)]
    func totalWaviness(_ num1: Int, _ num2: Int) -> Int {
//        var numb1 = Array(arrayLiteral: String(num1)).map{Int($0)!}
//        var numb2 = Array(arrayLiteral: String(num2)).map{Int($0)!}
        func checkCheck(_ ar: Int) -> Int {
            var count = 0
            let arr = Array(String(ar)).compactMap({String($0)}).compactMap({Int($0)})
            let length = arr.count
            if length < 3 {
                return 0
            }
            for ar in 1..<length - 1 {
                if arr[ar] > arr[ar - 1] && arr[ar + 1] < arr[ar]{
                    count += 1
                }
                else if arr[ar + 1] > arr[ar] && arr[ar - 1] > arr[ar]{
                    count += 1
                }
            }
            return count
        }
        var answer = 0
        for i in num1...num2 {
            answer += checkCheck(i)
        }
        return answer
    }
}
