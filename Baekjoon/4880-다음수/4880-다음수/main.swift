struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        var input = readIntegers()
        var (a, b, c) = (input[0], input[1], input[2])
        
        while !(a == 0 && b == 0 && c == 0) {
            if b - a == c - b {
                print("AP \(c + c - b)")
            } else if b / a == c / b {
                print("GP \(c * (c / b))")
            }
            
            input = readIntegers()
            (a, b, c) = (input[0], input[1], input[2])
        }
    }
}

Solution().solution()
