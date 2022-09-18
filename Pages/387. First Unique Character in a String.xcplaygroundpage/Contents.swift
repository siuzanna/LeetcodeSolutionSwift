//
//    Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
//
//    Input: s = "leetcode"
//    Output: 0

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let s = s.map{($0)}
        var dict = [Character:Int]()
        var result = 0
        
        for i in 0...s.count-1 {
            let char = s[i]
            if let last = dict.last {
                if last != char  {
                    dict.append(char)
                } else {
                    dict.popLast()
                }
            }
        }
        
        if dict != nil {
            result = dict.first
        } else {
            result = -1
        }
        return result
    }
}

var solution = Solution()
print(solution.firstUniqChar("loveleetcode"))
