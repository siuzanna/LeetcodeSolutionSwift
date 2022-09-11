 
//        Given an integer num, return the number of steps to reduce it to zero.
//
//        In one step, if the current number is even, you have to divide it by 2,
//        otherwise, you have to subtract 1 from it.
//
//        Input: num = 14
//        Output: 6
//        Explanation:
//            Step 1) 14 is even; divide by 2 and obtain 7.
//            Step 2) 7 is odd; subtract 1 and obtain 6.
//            Step 3) 6 is even; divide by 2 and obtain 3.
//            Step 4) 3 is odd; subtract 1 and obtain 2.
//            Step 5) 2 is even; divide by 2 and obtain 1.
//            Step 6) 1 is odd; subtract 1 and obtain 0.

import Foundation

class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var currentValue = num
        var answer = 0
        while currentValue != 0 {
            if currentValue % 2 == 0 {
                currentValue = currentValue / 2
            } else {
                currentValue -= 1
            }
            answer += 1
        }
        return answer
    }
}

var solution = Solution()
print(solution.numberOfSteps(123))
