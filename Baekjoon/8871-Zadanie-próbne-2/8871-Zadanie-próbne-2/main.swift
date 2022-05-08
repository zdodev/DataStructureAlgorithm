struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let round = readInteger()
        let minimal = (round + 1) * 2
        let maximum = (round + 1) * 3
        
        print("\(minimal) \(maximum)")
    }
}

Solution().solution()
