class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let shortString = strs.min() else {
            return ""
        }
        var longest = ""
        for i in 0...shortString.count {
            let prefix = shortString.prefix(i)
            var flag = true
    
            for str in strs {
                flag = flag && str.hasPrefix(prefix)
            }
            if flag {
                longest = String(prefix)
            } else {
                return longest
            }
        }
        return longest
    }
}
