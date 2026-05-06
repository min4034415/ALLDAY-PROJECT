//
//  Apr25.swift
//  ALLDAY PROJECT
//
//  Created by Ouimin Lee on 4/25/26.
//

import Foundation

class Apr25 {
    
    /**
     * Definition for singly-linked list.
     * public class ListNode {
     *     public var val: Int
     *     public var next: ListNode?
     *     public init() { self.val = 0; self.next = nil; }
     *     public init(_ val: Int) { self.val = val; self.next = nil; }
     *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
     * }
     */
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var listtoreturn: ListNode? = nil
//        var flag = false
//        var list1 = l1
//        var list2 = l2
//        while list1 != nil && list2 != nil {
//            var over10: Bool {
//                (list1?.val ?? 0) + (list2?.val ?? 0) >= 10
//            }
//            if listtoreturn == nil {
//                //처음시작할경우
//                //l1?.val ?? 0 + l2?.val ?? 0
//                listtoreturn = ListNode(((list1?.val ?? 0) + (list2?.val ?? 0)) % 10)
//                flag = over10
//                list1 = list1?.next
//                list2 = list2?.next
//                print(listtoreturn?.val ?? 0)
//            }
//            else {
//                //                var newInt = flag ? 1 : 0
//                var newList = ListNode(((list1?.val ?? 0) + (list2?.val ?? 0)) % 10 + (flag ? 1 : 0), nil)
//                flag = over10
//                
//                list1 = list1?.next
//                list2 = list2?.next
//                
//                listtoreturn?.next = newList
//                print(newList.val)
//                
//            }
//        }
//        
//        return listtoreturn
//    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0) // 결과 리스트를 추적하기 위한 가짜 노드
        var curr = dummy        // 현재 노드를 가리키는 포인터
        var carry = 0           // flag 대신 숫자로 관리하는게 편리합니다 (0 또는 1)
        
        var p1 = l1
        var p2 = l2
        
        // 두 리스트 중 하나라도 남아있거나, 마지막 올림(carry)이 있으면 계속 진행
        while p1 != nil || p2 != nil || carry != 0 {
            let val1 = p1?.val ?? 0
            let val2 = p2?.val ?? 0
            
            // 1. 합계 계산 (현재 값들 + 이전 단계의 올림)
            let total = val1 + val2 + carry
            
            // 2. 새로운 올림과 현재 자릿수 계산
            carry = total / 10
            let newNode = ListNode(total % 10)
            
            // 3. 리스트 연결 및 포인터 이동
            curr.next = newNode
            curr = newNode
            
            // 다음 노드로 이동
            p1 = p1?.next
            p2 = p2?.next
        }
        
        return dummy.next // 시작 노드(0)의 다음부터가 진짜 결과
    }
    
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


