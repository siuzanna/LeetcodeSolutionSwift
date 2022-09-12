//        An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.
//        Given an integer n, return true if n is an ugly number.
//
//        Input: n = 6
//        Output: true
//        Explanation: 6 = 2 × 3

import Foundation

class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n == 0 { return false}
        
        var n = n
        var currentNum = 2
        var primeFactors: [Int] = []
        
        while n != 1 {
            if n % currentNum == 0 {
                n /= currentNum
                primeFactors.append(currentNum)
            } else {
                currentNum += 1
                if currentNum == 7 {
                    return false
                }
            }
        }
        
        var result = Set(primeFactors)
        result.remove(2)
        result.remove(3)
        result.remove(5)
        return result.isEmpty ? true : false
    }
}

var solution = Solution()
print(solution.isUgly(-2147483648))
