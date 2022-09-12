//        Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.
//
//        Input: num = 38
//        Output: 2
//        Explanation: The process is
//        38 --> 3 + 8 --> 11
//        11 --> 1 + 1 --> 2
//        Since 2 has only one digit, return it.

import Foundation

class Solution {
    func addDigits(_ num: Int) -> Int {
        var result: Int = num
        while !Array(0...9).contains(result) {
            var count = 0
            "\(result)".forEach { num in
                count += Int(String(num))!
            }
            result = count
            print(count)
        }
        return result
    }
}

var solution = Solution()
print(solution.addDigits(38))
