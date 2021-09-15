struct Solution {
    private func readDouble() -> Double {
        Double(readLine()!)!
    }
    
    private func returnMinimalCardCount(_ number: Double) -> Int {
        var sum = 0.0
        
        for n in 2... {
            sum += 1 / Double(n)
            if sum >= number {
                return n - 1
            }
        }
        
        return 0
    }
    
    func solution() {
        var input = readDouble()
        
        while input != 0.0 {
            let result = returnMinimalCardCount(input)
            print("\(result) card(s)")
            input = readDouble()
        }
    }
}

Solution().solution()
