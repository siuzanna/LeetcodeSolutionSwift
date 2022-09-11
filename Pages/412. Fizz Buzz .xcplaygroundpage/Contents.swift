//        Given an integer n, return a string array answer (1-indexed) where:
//
//        answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
//        answer[i] == "Fizz" if i is divisible by 3.
//        answer[i] == "Buzz" if i is divisible by 5.
//        answer[i] == i (as a string) if none of the above conditions are true.
//
//        Example 3:
//
//        Input: n = 15
//        Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]

import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        for number in 1...n {
            if number % 5 == 0 && number % 3 == 0 {
                result.append("FizzBuzz")
            } else if number % 3 == 0 {
                result.append("Fizz")
            } else if number % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append("\(number)")
            }
        }
        return result
    }
}

var solution = Solution()
print(solution.fizzBuzz(5))
