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
                return
            }
            
            let result = input.reduce(0) { partialResult, element in
                partialResult + element
            }
            
            print(result)
        }
    }
}

Solution().solution()
