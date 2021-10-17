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
        
        for _ in 1...testcase {
            let input = readIntegers()
            let bitSum = input.reduce(0) { result, element in
                result + element.nonzeroBitCount
            }
            
            if bitSum % 2 == 0 {
                print("Valid")
            } else {
                print("Corrupt")
            }
        }
    }
}

Solution().solution()
