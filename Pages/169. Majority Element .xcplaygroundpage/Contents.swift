//        Given an array nums of size n, return the majority element.
//
//        The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
//
//    Input: nums = [3,2,3]
//    Output: 3

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var result = 0
        let dict = Dictionary(nums.map{($0, 1)}, uniquingKeysWith: +)
        for key in dict {
            if count < key.value {
                count = key.value
                result = key.key
            }
        }
        return result
    }
}

var solution = Solution()
print(solution.majorityElement([3,2,3]))
