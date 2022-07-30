class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard var `prefix` = strs.min() else { return "" }
        while `prefix`.isEmpty == false {
            if strs.allSatisfy({ $0.hasPrefix(`prefix`) }) { break }
                `prefix`.removeLast()
            }
            return `prefix`
        }
}