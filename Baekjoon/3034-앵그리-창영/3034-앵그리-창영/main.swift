struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let input = readIntegers()
        
        for _ in 1...input[0] {
            let size = readInteger()
            
            if size * size <= input[1] * input[1] + input[2] * input[2] {
                print("DA")
            } else {
                print("NE")
            }
        }
    }
}

Solution().solution()
