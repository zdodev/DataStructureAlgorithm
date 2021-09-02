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
        let testcase = readInteger()
        for _ in 1...testcase {
            let input = readIntegers()
            
            let evenNumbers = input.filter { number in
                number % 2 == 0
            }
            
            let minimumNumber = evenNumbers.reduce(Int.max) { result, number in
                result < number ? result : number
            }
            
            let sumOfEvenNumbers = evenNumbers.reduce(0) { result, number in
                result + number
            }
            
            print("\(sumOfEvenNumbers) \(minimumNumber)")
        }
    }
}

Solution().solution()
