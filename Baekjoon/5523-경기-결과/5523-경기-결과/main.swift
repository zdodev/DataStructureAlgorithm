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
        let testcase = readInteger()
        var a = 0
        var b = 0
        var input = [Int]()
        
        for _ in 1...testcase {
            input = readIntegers()
            if input[0] > input[1] {
                a += 1
            } else if input[0] < input[1] {
                b += 1
            }
        }
        
        print("\(a) \(b)")
    }
}

Solution().solution()
