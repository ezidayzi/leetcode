class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let shortestString = strs.min() else {
            return ""
        }
        var longest = ""
        for i in 0...shortestString.count {
            let prefix = shortestString.prefix(i)
            if strs.allSatisfy({ $0.hasPrefix(prefix)}) {
                longest = String(prefix)
            } else {
                return longest
            }
        }
        return longest
    }
}
