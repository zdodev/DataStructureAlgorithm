struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        while true {
            let input = readInteger()
            
            if input == 0 {
                return
            }
            
            if input == 1 {
                print("1 => 1")
                continue
            }
            
            var sum = 1
            var add = 2
            
            for _ in 1..<input {
                sum += add
                add += 2
            }
            
            print("\(input) => \(sum)")
        }
    }
}

Solution().solution()
