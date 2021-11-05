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
        
        for _ in 1...testcase {
            let input = readIntegers()
            let (scoreA, scoreB) = (input[0], input[1])
            
            if scoreA > scoreB {
                a += scoreA + scoreB
            } else if scoreA < scoreB {
                b += scoreA + scoreB
            } else {
                a += scoreA
                b += scoreB
            }
        }
        
        print("\(a) \(b)")
    }
}

Solution().solution()
