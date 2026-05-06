//
//  Leet1.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 3/30/26.
//

import Foundation

class Leet1 {
    static func isValid(_ s: String) -> Bool {
        var stack: [Character] = .init()
        for i in s {
            if "([{".contains(i) {
                stack.append(i)
            }
            else {
                if i == ")"{
                    if stack.last! != "(" {
                        return false
                    } else {
                        stack.removeLast()
                    }
                }
                else if i == "]" {
                    if stack.last! != "[" {
                        return false
                    }
                    else {
                        stack.removeLast()
                    }
                }
                else {
                    if stack.last! != "{" {
                        return false
                    }
                    else {
                        stack.removeLast()
                    }
                }
            }
            
        }
        return true
    }
}
