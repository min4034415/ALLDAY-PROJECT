//
//  Jun5.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 6/5/26.
//

import Foundation

class Jun5 {
    func isPalindrome(_ s: String) -> Bool {
        //        var realString = s.trimmingCharacters(in: .punctuationCharacters).trimmingCharacters(in: .whitespaces)
        //            .trimmingCharacters(in: .controlCharacters).filter{$0.isLetter}.lowercased()
        var realString = s.replacingOccurrences(of: " ", with: "").lowercased()
        realString = realString.filter({$0.isLetter || $0.isNumber})
        print(realString)
        return realString == String(realString.reversed())
        
        //        let cleanString = s.lowercased().filter { $0.isLetter || $0.isNumber }
        //
        //        return cleanString == String(cleanString.reversed())
        //        }
    }
}
