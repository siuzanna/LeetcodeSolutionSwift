//    Given the head of a singly linked list, return the middle node of the linked list.
//
//    If there are two middle nodes, return the second middle node.

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
     
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var result = ListNode()
        var count = 0
        guard let head = head else { return nil }
        while let next =  head.next {
            count += 1
        }
//        if count % 2 == 0 {
//            result = head[count/2-1].next
//
//            for i in 0...count-1 {
//                if count % 2 == 0 {}
//            }
//
//        } else {
//            result = head[count-1].val
//        }
        var res = 0
        while let newValue =  head.next {
            res += 1
            if count % 2 == 0 && count / 2 == res {
                result = newValue.next ?? 4
                break
            } else if count / 2 + 1 == res {
                result = newValue
                break
            }
        }
        
        return result
    }
}


