struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let count = readInteger()
        
        for _ in 1...count {
            let input = readIntegers()
            if input[0] < input[1] {
                print("NO BRAINS")
            } else {
                print("MMM BRAINS")
            }
        }
    }
}

Solution().solution()
