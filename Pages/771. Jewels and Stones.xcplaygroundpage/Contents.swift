//        You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
//
//        Letters are case sensitive, so "a" is considered a different type of stone from "A".
//
//        Input: jewels = "aA", stones = "aAAbbbb"
//        Output: 3


import Foundation

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        let jewels = jewels.map {($0)}
        let stones = stones.map {($0)}
        
        stones.forEach { stone in
            for jewel in jewels {
                if stone == jewel {
                    result += 1
                }
            }
        }
        return result
    }
}

var solution = Solution()
print(solution.numJewelsInStones("aA", "aAAbbbb"))
