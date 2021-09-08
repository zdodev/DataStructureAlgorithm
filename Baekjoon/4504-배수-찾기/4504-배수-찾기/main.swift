struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let n = readInteger()
        var number = readInteger()
        
        while number != 0 {
            if number % n == 0 {
                print("\(number) is a multiple of \(n).")
            } else {
                print("\(number) is NOT a multiple of \(n).")
            }
            number = readInteger()
        }
    }
}

Solution().solution()
