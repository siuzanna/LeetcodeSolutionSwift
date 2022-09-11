//
//        Given two strings s and t, return true if t is an anagram of s, and false otherwise.
//
//        An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
//
//
//        Input: s = "anagram", t = "nagaram"
//        Output: true

import Foundation

//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        var result = false
//        if s.sorted() == t.sorted() {
//            result = true
//        }
//        return result
//    }
//}

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDict = Dictionary(s.map{($0, 1)}, uniquingKeysWith: +)
        var tDict = Dictionary(t.map{($0, 1)}, uniquingKeysWith: +)

        for key in sDict.keys {
            if sDict[key] != nil {
                if sDict[key] == tDict[key] {
                    sDict[key] = nil
                    tDict[key] = nil
                }
             }
        }
        return sDict.isEmpty && tDict.isEmpty ? true : false
    }
}

var solution = Solution()
print(solution.isAnagram("anagram", "nagaram"))
