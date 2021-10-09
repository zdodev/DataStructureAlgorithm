struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while true {
            let input = readIntegers()
            
            if input[0] == 0 && input[1] == 0 {
                break
            }
            
            let d = input[0] / input[1]
            let r = input[0] % input[1]
            
            if d == 0 && r > 0 {
                print("factor")
            } else if d > 0 && r == 0 {
                print("multiple")
            } else {
                print("neither")
            }
        }
    }
}

Solution().solution()
