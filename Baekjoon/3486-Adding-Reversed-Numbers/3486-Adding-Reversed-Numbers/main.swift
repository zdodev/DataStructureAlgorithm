struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    private func reversedNumber(number: Int) -> Int {
        var number = number
        var reverseNumber = 0
        
        while number != 0 {
            reverseNumber = reverseNumber * 10 + number % 10
            number /= 10
        }
        
        return reverseNumber
    }
    
    func solution() {
        let testcase = readInteger()
        
        for _ in 1...testcase {
            let input = readIntegers()
            let reversedNumber1 = reversedNumber(number: input[0])
            let reversedNumber2 = reversedNumber(number: input[1])
            let sum = reversedNumber1 + reversedNumber2
            let reversedSum = reversedNumber(number: sum)
            print(reversedSum)
        }
    }
}

Solution().solution()
