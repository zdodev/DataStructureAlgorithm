struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let input = readIntegers()
        let (n, b) = (input[0], input[1])
        var sum = 1
        
        if b == 0 && n == 1 {
            print("yes")
            return
        }
        
        if b == 0 && n != 1 {
            print("no")
            return
        }
        
        for i in 1...b {
            sum += 1 << i
        }
        
        if n <= sum {
            print("yes")
        } else {
            print("no")
        }
    }
}

Solution().solution()
