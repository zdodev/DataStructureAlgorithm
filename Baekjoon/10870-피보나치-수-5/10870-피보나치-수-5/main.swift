struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func fibonnaci(_ number: Int) -> Int {
        if number == 0 {
            return 0
        } else if number == 1 {
            return 1
        }

        var fiboArray = [0, 1]
        
        for index in 2...number {
            fiboArray.append(fiboArray[index - 1] + fiboArray[index - 2])
        }
        
        return fiboArray[number]
    }
    
    func solution() {
        let input = readInteger()
        
        let result = fibonnaci(input)
        print(result)
    }
}

Solution().solution()
