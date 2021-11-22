struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func calculate(_ input: Int) -> [Int] {
        var index1 = 1
        var index2 = 1
        
        
        while input > index1 * index2 {
            if index1 > index2 {
                index2 += 1
            } else if index1 == index2 {
                index1 += 1
            }
        }
        
        return [index1, index2]
    }
    
    func solution() {
        let input = readInteger()
        let result = calculate(input)
        
        print("\(result[0]) \(result[1])")
    }
}

Solution().solution()
