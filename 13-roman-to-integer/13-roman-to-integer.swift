class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var answer = 0
        let arr = Array(s)
        for i in 0..<arr.count-1 {
            var r = dict["\(arr[i])"] ?? 0
            if (arr[i] == "I" && (arr[i+1] == "V" || arr[i+1] == "X"))
                || (arr[i] == "X" && (arr[i+1] == "L" || arr[i+1] == "C"))
                || (arr[i] == "C" && (arr[i+1] == "D" || arr[i+1] == "M")) {
                answer += -r
                continue
            }
            answer += r
        }
        answer += dict["\(arr[arr.count-1])"] ?? 0
        return answer
    }
}