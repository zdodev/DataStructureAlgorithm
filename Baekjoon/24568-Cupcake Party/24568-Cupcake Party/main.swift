struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let r = readInteger()
        let s = readInteger()
        var total = r * 8 + s * 3
        total -= 28
        print(total)
    }
}

Solution().solution()

