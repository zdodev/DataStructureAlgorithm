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
        let test = readInteger()
        
        for _ in 1...test {
            let input = readIntegers()
            let (r, e, c) = (input[0], input[1], input[2])
            
            if r + c < e {
                print("advertise")
            } else if r + c == e {
                print("does not matter")
            } else {
                print("do not advertise")
            }
        }
    }
}

Solution().solution()
