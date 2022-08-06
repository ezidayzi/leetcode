class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
        
        let arr = s.map { String($0) }
        dump(arr)
        var stack: [String] = []
        
        let dict = [
            "(":")",
            "{":"}",
            "[":"]"
        ]
        
        for a in arr {
            if a == "(" || a == "{" || a == "[" {
                stack.append(a)
                continue
            }
            

            if let last = stack.last,
                dict[last] == a {
                stack.removeLast()
            } else {
                stack.append(a)
            }
            
        }
        return stack.isEmpty
    }
}