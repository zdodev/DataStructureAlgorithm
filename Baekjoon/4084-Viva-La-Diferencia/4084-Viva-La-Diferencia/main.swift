struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func subtraction(_ numbers: [Int]) -> [Int] {
        let a = abs(numbers[0] - numbers[1])
        let b = abs(numbers[1] - numbers[2])
        let c = abs(numbers[2] - numbers[3])
        let d = abs(numbers[3] - numbers[0])
        
        return [a, b, c, d]
    }
    
    func isEqualArrayElement(_ numbers: [Int]) -> Bool {
        let count = numbers.filter { element in
            element == numbers[0]
        }
        
        return count.count == 4 ? true : false
    }
    
    func solution() {
        var count = 0
        
        var input = readIntegers()
        
        while !(input[0] == 0 && input[1] == 0 && input[2] == 0 && input[3] == 0) {
            
            while !isEqualArrayElement(input) {
                input = subtraction(input)
                count += 1
            }
            
            print(count)
            count = 0
            input = readIntegers()
        }
    }
}

Solution().solution()
