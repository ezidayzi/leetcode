class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.count > haystack.count {
            return -1
        }
        
        if needle == "" {
            return 0
        }
        
        if let range = haystack.range(of: needle) {
            let index = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
            return index
        }
        else {
            return -1
        }
    }
}