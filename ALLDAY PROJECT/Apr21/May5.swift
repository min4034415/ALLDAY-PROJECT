//
//  May5.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 5/5/26.
//

public class ListNodeaa {
    public var val: Int
    public var next: ListNodeaa?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNodeaa?) { self.val = val; self.next = next; }
}

import Foundation

class May5 {
    func rotateRight(_ head: ListNodeaa?, _ k: Int) -> ListNodeaa? {
        if head == nil || k == 0 || head?.next == nil {
            return head
        }
//        var starPoint = head
        var count = 1
        var notRealHead = head
        while notRealHead?.next != nil {
            notRealHead = notRealHead?.next
            count += 1
        }
        var realK = k > count ? k % count : k
        if realK == 0 {
            return head
        }
        
        notRealHead?.next = head
        var newTail = head
        for _ in 0..<(count - realK - 1){
            newTail = newTail?.next
        }
        
        let newHead = newTail?.next
        newTail?.next = nil
        
        return newHead
    }
}
