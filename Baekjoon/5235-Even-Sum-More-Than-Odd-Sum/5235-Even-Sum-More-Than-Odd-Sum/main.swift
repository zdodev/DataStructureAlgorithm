struct Solution {
    func sumOfEvenNumbers(_ numbers: [Int]) -> Int {
        numbers[1...].filter { element in
            element % 2 == 0
        }.reduce(0) { result, element in
            result + element
        }
    }
    
    func sumOfOddNumbers(_ numbers: [Int]) -> Int {
        numbers[1...].filter { element in
            element % 2 == 1
        }.reduce(0) { result, element in
            result + element
        }
    }
    
    func solution(_ numbers: [Int]) -> String {
        let sumOfEvenNumbers = sumOfEvenNumbers(numbers)
        let sumOfOddNumbers = sumOfOddNumbers(numbers)
        
        if sumOfEvenNumbers > sumOfOddNumbers {
            return "EVEN"
        }
        
        if sumOfEvenNumbers < sumOfOddNumbers {
            return "ODD"
        }
        
        return "TIE"
    }
    
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func result() {
        let testcase = readInteger()
        
        for _ in 1...testcase {
            let input = readIntegers()
            print(solution(input))
        }
    }
}

Solution().result()
