struct Solution {
    private func readString() -> String {
        readLine()!
    }
    
    private func factorial(_ value: Int) -> Int {
        (1...value).reduce(1) { partialResult, element in
            partialResult * element
        }
    }
    
    func solution() {
        while true {
            let input = readString()
            
            if input == "0" {
                return
            }
            
            var count = input.count
            let result = input.reduce(0) { partialResult, character in
                let integer = character.wholeNumberValue!
                let result = integer * factorial(count)
                count -= 1
                return partialResult + result
            }
            
            print(result)
        }
    }
}

Solution().solution()
