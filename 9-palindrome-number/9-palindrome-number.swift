class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        return String("\(x)".reversed()) == "\(x)"
    }
}