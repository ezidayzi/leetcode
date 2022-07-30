class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let shortestString = strs.min() else {
            return ""
        }
        var logest = ""
        var flag = true

        for i in 0...shortestString.count {
            let prefix = shortestString.prefix(i)
            for str in strs {
                flag = flag && str.hasPrefix(prefix)
            }

            if flag {
                logest = String(prefix)
            } else {
                return logest
            }
        }
        return logest
    }
}
