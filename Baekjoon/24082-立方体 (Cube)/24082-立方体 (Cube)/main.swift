struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let x = readInteger()
        let result = x * x * x
        print(result)
    }
}

Solution().solution()

