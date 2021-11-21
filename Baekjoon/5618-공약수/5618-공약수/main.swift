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
        let input = readInteger()
        var numbers = readIntegers()
            .sorted()
        
        if numbers.count == 2 {
            numbers.append(0)
        }
        
        for index in 1...numbers[0] {
            if numbers[0] % index == 0 && numbers[1] % index == 0 && numbers[2] % index == 0 {
                print(index)
            }
        }
    }
}

Solution().solution()
