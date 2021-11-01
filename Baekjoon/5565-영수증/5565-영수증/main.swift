struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let total = readInteger()
        
        var sum = 0
        
        for _ in 1...9 {
            sum += readInteger()
        }
        
        print(total - sum)
    }
}

Solution().solution()
