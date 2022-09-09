//        Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//
//        Return the running sum of nums.
//
//
//
//        Example 1:
//
//        Input: nums = [1,2,3,4]
//        Output: [1,3,6,10]
//        Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var output: [Int] = []
        for i in 0...nums.count-1 {
            let lastValue = output.last ?? 0
            output.append(lastValue+nums[i])
        }
        return output
    }
}

var solution = Solution()
print(solution.runningSum([1,2,3,4]))
