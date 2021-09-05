struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }.sorted()
    }
    
    func solution() {
        var input = readIntegers()
        
        while !(input[0] == 0 && input[1] == 0 && input[2] == 0) {
            let a2 = input[0] * input[0]
            let b2 = input[1] * input[1]
            let c2 = input[2] * input[2]
            
            if (a2 + b2) == c2 {
                print("right")
            } else {
                print("wrong")
            }
            
            input = readIntegers()
        }
    }
}

Solution().solution()
