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
        var n = readInteger()
        
        while n != -1 {
            var temp = 0
            var sum = 0
            
            for _ in 1...n {
                let input = readIntegers()
                sum += input[0] * (input[1] - temp)
                temp = input[1]
            }
            
            print("\(sum) miles")
            n = readInteger()
        }
    }
}

Solution().solution()
