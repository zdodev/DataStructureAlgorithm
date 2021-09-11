struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    private func power(_ number: Int, _ n: Int) -> Int {
        var result = 1
        for _ in 1...n {
            result *= number
        }
        
        return result
    }
    
    func solution() {
        var input = readIntegers()
        var b = input[0]
        var n = input[1]
        
        while b != 0 && n != 0 {
            var number = 1
            var squre = 0
            
            while squre <= b {
                squre = power(number, n)
                number += 1
            }
            number -= 1
            
            let case1 = abs(b - (power(number - 1, n)))
            let case2 = abs((power(number, n)) - b)
            
            if case1 < case2 {
                print(number - 1)
            } else {
                print(number)
            }
            
            input = readIntegers()
            b = input[0]
            n = input[1]
        }
    }
}

Solution().solution()
