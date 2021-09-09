struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        var input = readInteger()
        
        if input == 4 || input == 7 {
            print(-1)
            return
        }
        
        var count3 = 0
        var count5 = 0
        
        while input % 5 != 0 {
            input -= 3
            count3 += 1
        }
        
        count5 = input / 5
        print(count3 + count5)
    }
}

Solution().solution()
