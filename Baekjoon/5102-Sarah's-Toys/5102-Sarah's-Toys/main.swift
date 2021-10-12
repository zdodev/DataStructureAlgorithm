struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while true {
            let input = readIntegers()
            let (a, b) = (input[0], input[1])
            var sub = a - b
            
            if a == 0 && b == 0 {
                break
            }
            
            if sub < 2 {
                print("0 0")
                continue
            }
            
            var q3 = 0
            
            if sub % 2 == 1 {
                sub -= 3
                q3 = 1
            }
            
            let q = sub / 2
            
            print("\(q) \(q3)")
        }
    }
}

Solution().solution()
