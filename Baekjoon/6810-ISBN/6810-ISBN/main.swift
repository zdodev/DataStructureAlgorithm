struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let sum = 9 * 1 + 7 * 3 + 8 * 1 + 0 * 3 + 9 * 1 + 2 * 3 + 1 * 1 + 4 * 3 + 1 * 1 + 8 * 3
        let first = sum + readInteger() * 1
        let second = first + readInteger() * 3
        let third = second + readInteger() * 1
        
        print("The 1-3-sum is \(third)")
    }
}

Solution().solution()
