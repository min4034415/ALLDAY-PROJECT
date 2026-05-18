//
//  May13.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/14/26.
//

import Foundation

class May13 {
    var example = ["Hello World","   fly me   to   the moon  ","luffy is still joyboy"]
    func lengthOfLastWord(_ s: String) -> Int {
        s.split(separator: " ").last!.count
    }
}
