struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }

    func solution() {
        let x = readInteger()
        let result = x % 21
        print(result)
    }
}

Solution().solution()
