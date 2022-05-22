struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let a = readInteger()
        let b = readInteger()
        let result = b - a
        print(result)
    }
}

Solution().solution()

