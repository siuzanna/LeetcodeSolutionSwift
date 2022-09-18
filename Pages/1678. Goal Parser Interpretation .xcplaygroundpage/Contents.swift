//        You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
//
//        Given the string command, return the Goal Parser's interpretation of command.
//
//        Input: command = "G()(al)"
//        Output: "Goal"
//        Explanation: The Goal Parser interprets the command as follows:
//        G -> G
//            () -> o
//        (al) -> al
//        The final concatenated result is "Goal".

import Foundation
 
class Solution {
    func interpret(_ command: String) -> String {
        var result = ""
        
        var last = ""
        for i in command {
            if i == "G" {
                result += "G"
            } else if i == "(" {
                last = "("
            } else if last == "(" && i == ")" {
                result += "o"
                last = ""
            } else if i == "a" {
                result += "al"
                last = ""
            }
        }
        return result
    }
}
 
var solution = Solution()
print(solution.interpret("G()()()()(al)"))

