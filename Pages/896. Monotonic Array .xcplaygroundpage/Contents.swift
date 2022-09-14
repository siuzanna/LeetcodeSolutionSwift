
//    An array is monotonic if it is either monotone increasing or monotone decreasing.
//
//    An array nums is monotone increasing if for all i <= j, nums[i] <= nums[j]. An array nums is monotone decreasing if for all i <= j, nums[i] >= nums[j].
//
//    Given an integer array nums, return true if the given array is monotonic, or false otherwise
//
//    Input: nums = [1,2,2,3]
//    Output: true

import Foundation

class Solution {
    func isDecreasing(_ firstNum: Int?, _ lastNum: Int?) -> Bool {
        guard let firstNum = firstNum,
              let lastNum = lastNum else { return false}
        if firstNum > lastNum {
            return true
        }
        return false
    }
    
    func isMonotonic(_ nums: [Int]) -> Bool {
        if nums.count == 1 || nums.count == 2 {
            return true
        }
        var result = false
        if isDecreasing(nums.first, nums.last) {
            for j in 1...nums.count-1 {
                if nums[j-1] >= nums[j] {
                    result = true
                } else {
                    return false
                }
            }
        } else {
            for j in 1...nums.count-1 {
                if nums[j-1] <= nums[j] {
                    result = true
                } else {
                    return false
                }
            }
        }
        return result
    }
}

var solution = Solution()
print(solution.isMonotonic([1,3,2,4]))
