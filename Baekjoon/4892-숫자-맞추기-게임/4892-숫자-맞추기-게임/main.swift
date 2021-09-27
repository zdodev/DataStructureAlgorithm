struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        var count = 0
        while true {
            let input = readInteger()
            if input == 0 {
                return
            }
            count += 1
            
            let n1 = input * 3
            
            var n2 = 0
            if n1 % 2 == 0 {
                n2 = n1 / 2
            } else {
                n2 = (n1 + 1) / 2
            }
            
            let n3 = n2 * 3
            let n4 = n3 / 9
            
            if n1 % 2 == 0 {
                print("\(count). even \(n4)")
            } else {
                print("\(count). odd \(n4)")
            }
        }
    }
}

Solution().solution()
