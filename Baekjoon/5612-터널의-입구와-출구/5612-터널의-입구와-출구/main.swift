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
        let n = readInteger()
        let m = readInteger()
        var remainedCar = m
        var max = m
        
        for _ in 1...n {
            let input = readIntegers()
            remainedCar += input[0] - input[1]
            
            if remainedCar < 0 {
                print(0)
                return
            }
            
            if remainedCar > max {
                max = remainedCar
            }
        }
        
        print(max)
    }
}

Solution().solution()
