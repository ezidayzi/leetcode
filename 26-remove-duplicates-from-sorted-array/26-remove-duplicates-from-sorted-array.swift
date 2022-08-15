class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums =  Array(Set(nums)).sorted()
        return nums.count
    }
}
