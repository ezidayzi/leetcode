class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for a in 0..<nums.count {
            for b in (a+1)..<nums.count {
                if target == nums[a] + nums[b] {
                    return [a, b]
                }
            }
        }
        return []
    }
}