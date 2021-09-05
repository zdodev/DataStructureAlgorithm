struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    private func convertIntegerToArray(_ number: Int) -> [Int] {
        var number = number
        var array = [Int]()
        
        while number != 0 {
            array.append(number % 10)
            number /= 10
        }
        
        return array
    }
    
    func solution() {
        var input = readIntegers()
        
        while !(input[0] == 0 && input[1] == 0) {
            var first = convertIntegerToArray(input[0])
            var second = convertIntegerToArray(input[1])
            
            if first.count > second.count {
                while first.count != second.count {
                    second.insert(0, at: second.count)
                }
            } else {
                while first.count != second.count {
                    first.insert(0, at: first.count)
                }
            }

            var carry = 0
            var carryCount = 0

            for index in 0..<first.count {
                if first[index] + second[index] + carry > 9 {
                    carry = 1
                    carryCount += 1
                } else {
                    carry = 0
                }
            }

            print(carryCount)
            input = readIntegers()
        }
    }
}

Solution().solution()
