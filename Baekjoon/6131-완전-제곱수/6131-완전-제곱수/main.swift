struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let n = readInteger()
        var count = 0
        
        for index1 in 1...500 {
            for index2 in 1...500 {
                let a = index1 * index1
                let b = index2 * index2
                if a == b + n {
                    count += 1
                }
            }
        }
        
        print(count)
    }
}

Solution().solution()
