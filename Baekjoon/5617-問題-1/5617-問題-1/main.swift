struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        var q = 0
        var w = 0
        var e = 0
        var r = 0
        
        while true {
            let input = readIntegers()
            if input.isEmpty {
                break
            }
            
            let a = input[0]
            let b = input[1]
            let c = input[2]
            
            if c < a + b {
                q += 1
                
                if c * c == a * a + b * b {
                    w += 1
                }
                
                if c * c < a * a + b * b {
                    e += 1
                }
                
                if c * c > a * a + b * b {
                    r += 1
                }
            }
        }
        
        print("\(q) \(w) \(e) \(r)")
    }
}

Solution().solution()
